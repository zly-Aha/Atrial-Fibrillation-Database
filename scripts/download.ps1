[CmdletBinding()]
param(
    [string[]]$Dataset = @(),
    [string]$OutputDir = "",
    [switch]$List
)

$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
if ([string]::IsNullOrWhiteSpace($OutputDir)) {
    $OutputDir = Join-Path $repoRoot "data"
}

$catalog = [ordered]@{
    "ltafdb" = @{
        Url         = "https://physionet.org/files/ltafdb/1.0.0/"
        Size        = "3.4 GB uncompressed"
        License     = "ODC-BY 1.0"
        Description = "Long-Term AF Database"
    }
    "afdb" = @{
        Url         = "https://physionet.org/files/afdb/1.0.0/"
        Size        = "605.9 MB uncompressed"
        License     = "ODC-BY 1.0"
        Description = "MIT-BIH Atrial Fibrillation Database"
    }
    "mitdb" = @{
        Url         = "https://physionet.org/files/mitdb/1.0.0/"
        Size        = "104.3 MB uncompressed"
        License     = "ODC-BY 1.0"
        Description = "MIT-BIH Arrhythmia Database"
    }
    "challenge-2020" = @{
        Url         = "https://physionet.org/files/challenge-2020/1.0.2/"
        Size        = "7.5 GB uncompressed"
        License     = "CC BY 4.0"
        Description = "PhysioNet/CinC Challenge 2020"
        AwsS3       = "s3://physionet-open/challenge-2020/1.0.2/"
    }
    "icentia11k" = @{
        Url         = "https://physionet.org/files/icentia11k-continuous-ecg/1.0/"
        Size        = "1.1 TB uncompressed"
        License     = "CC BY-NC-SA 4.0 (non-commercial)"
        Description = "Icentia11k single-lead continuous ECG"
    }
    "iridia-af" = @{
        Url         = "https://zenodo.org/records/8405941"
        Size        = "about 9.8 GB zip"
        License     = "CC BY 4.0"
        Description = "IRIDIA-AF paroxysmal AF database"
        Manual      = $true
    }
    "zenodo-5815074" = @{
        Url         = "https://zenodo.org/records/5815074"
        Size        = "restricted"
        License     = "custom non-commercial"
        Description = "Long-term ECG and wrist PPG with annotated AF"
        Manual      = $true
    }
}

function Show-Catalog {
    $rows = foreach ($key in $catalog.Keys) {
        $item = $catalog[$key]
        [PSCustomObject]@{
            Dataset     = $key
            Size        = $item.Size
            License     = $item.License
            Description = $item.Description
        }
    }
    $rows | Format-Table -AutoSize
}

if ($List -or $Dataset.Count -eq 0) {
    Show-Catalog
    if ($Dataset.Count -eq 0) {
        Write-Host ""
        Write-Host "Usage examples:"
        Write-Host "  .\scripts\download.ps1 -Dataset ltafdb"
        Write-Host "  .\scripts\download.ps1 -Dataset afdb, mitdb"
        Write-Host ""
        Write-Host "Note: Zenodo 5815074 requires an access request; icentia11k is non-commercial only."
    }
    exit 0
}

$wget = Get-Command wget.exe -ErrorAction SilentlyContinue
$curl = Get-Command curl.exe -ErrorAction SilentlyContinue
if (-not $wget -and -not $curl) {
    throw "Neither wget.exe nor curl.exe was found. Install one of them, or follow docs/usage.md for manual download."
}

function Get-PhysioNetFiles {
    param(
        [string]$Url,
        [string]$Target
    )

    if ($wget) {
        Write-Host "Downloading with wget.exe."
        & $wget.Source -r -N -c -np -P $Target $Url
        return $LASTEXITCODE
    }

    Write-Host "wget.exe not found; downloading files listed on the page with curl.exe."
    $index = Invoke-WebRequest -Uri $Url -UseBasicParsing -TimeoutSec 60
    $baseUri = [Uri]$Url
    $links = [regex]::Matches(
        $index.Content,
        'href="(?<href>[^"?]+\.(?:dat|hea|atr|qrs|qrsc|mat|txt|pdf|zip|xlsx|records|RECORDS|LICENSE))"',
        [System.Text.RegularExpressions.RegexOptions]::IgnoreCase
    )

    $folders = [System.Collections.Generic.HashSet[string]]::new()
    $files = [System.Collections.Generic.List[string]]::new()
    foreach ($match in $links) {
        $relative = $match.Groups["href"].Value
        $resolved = [Uri]::new($baseUri, $relative)
        if (-not $resolved.AbsoluteUri.StartsWith($Url, [System.StringComparison]::OrdinalIgnoreCase)) {
            continue
        }
        if ($relative.EndsWith("/")) {
            [void]$folders.Add($resolved.AbsoluteUri)
        } else {
            [void]$files.Add($resolved.AbsoluteUri)
        }
    }

    if ($files.Count -eq 0) {
        Write-Warning "No downloadable files were parsed from the page. Open the official page to download manually: $Url"
        return 1
    }

    foreach ($file in $files) {
        $relative = [Uri]::UnescapeDataString($file.Substring($Url.Length))
        $destination = Join-Path $Target $relative
        $folder = Split-Path -Parent $destination
        New-Item -ItemType Directory -Force -Path $folder | Out-Null
        Write-Host "  Downloading $relative"
        & $curl.Source -L --fail --retry 3 --continue-at - --output $destination $file
        if ($LASTEXITCODE -ne 0) {
            Write-Warning "Download failed: $file"
            return $LASTEXITCODE
        }
    }

    return 0
}

foreach ($name in $Dataset) {
    if (-not $catalog.Contains($name)) {
        Write-Warning "Unknown dataset: $name. Use -List to see available names."
        continue
    }

    $item = $catalog[$name]
    if ($item.Manual) {
        Write-Host "[$name] Manual download or access request required: $($item.Url)"
        continue
    }

    $target = Join-Path $OutputDir $name
    New-Item -ItemType Directory -Force -Path $target | Out-Null

    Write-Host "[$name] License: $($item.License)"
    Write-Host "[$name] Size: $($item.Size)"
    Write-Host "[$name] Target: $target"

    $exitCode = Get-PhysioNetFiles -Url $item.Url -Target $target
    if ($exitCode -ne 0) {
        Write-Warning "[$name] Download did not finish cleanly; run the script again to resume."
    }
}

Write-Host ""
Write-Host "Done. Data saved under: $OutputDir"
Write-Host "The data directory is excluded by .gitignore and will not be committed."

