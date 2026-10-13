# Atrial Fibrillation Database

A curated index of public ECG and PPG resources for atrial fibrillation (AF) research. This repository does not store or redistribute third-party data. It maintains links, metadata, licensing notes, and download helpers.

## Resource Overview

| ID | Dataset | Signal | Scale | License | Access |
| --- | --- | --- | --- | --- | --- |
| 01 | [Long-Term AF Database (ltafdb)](https://physionet.org/content/ltafdb/1.0.0/) | 2-lead ECG | 84 recordings, 24 h each | ODC-BY 1.0 | Public |
| 02 | [MIT-BIH Atrial Fibrillation Database (afdb)](https://physionet.org/content/afdb/1.0.0/) | 2-lead ECG | 25 recordings, 10 h each | ODC-BY 1.0 | Public |
| 03 | [MIT-BIH Arrhythmia Database (mitdb)](https://physionet.org/content/mitdb/1.0.0/) | 2-lead ECG | 48 recordings, about 30 min each | ODC-BY 1.0 | Public |
| 04 | [Icentia11k](https://physionet.org/content/icentia11k-continuous-ecg/1.0/) | single-lead ECG | 11,000 patients, about 1.1 TB | CC BY-NC-SA 4.0 | Public, non-commercial only |
| 05 | [PhysioNet/CinC Challenge 2020](https://physionet.org/content/challenge-2020/1.0.2/) | 12-lead ECG | 43,101 training recordings | CC BY 4.0 | Public |
| 06 | [IRIDIA-AF](https://zenodo.org/records/8405941) | 2-lead ECG | 167 recordings from 152 patients | CC BY 4.0 | Public |
| 07 | [Long-term ECG and wrist PPG with annotated AF](https://zenodo.org/records/5815074) | ECG + wrist PPG | 8 patients, 1,306 h | Custom non-commercial | Restricted, request access |
| 08 | [Peter Charlton Datasets](https://peterhcharlton.github.io/info/datasets) | ECG, PPG, and more | Index | Varies by dataset | Public index |
| 09 | [PPGArrhythmiaDetection](https://github.com/zdzdliu/PPGArrhythmiaDetection) | Wrist PPG | 228 patients, 118,217 paired 10 s segments | Not declared, check upstream | Public code with validation and test sets |

## Repository Layout

```text
Atrial-Fibrillation-Database/
├── data/                  # Local data only, excluded from Git
├── docs/                  # Data source notes and usage guides
│   └── datasets/          # One page per dataset
├── metadata/              # Machine-readable dataset catalogs
└── scripts/               # Download helpers
```

## Getting Started

1. Read [data-sources.md](data-sources.md) for license and access conditions.
2. Follow [usage.md](usage.md) to download or read the data.
3. Keep downloaded data under `data/`; the directory is excluded by `.gitignore`.

## License

The documentation, metadata, and scripts in this repository are released under the MIT License. Third-party datasets remain under their original licenses. Review each dataset license before use, redistribution, or commercial application. In particular, `icentia11k` is CC BY-NC-SA 4.0 and `Zenodo 5815074` requires an access request.

## Citation

Use `CITATION.cff` when citing this index. Cite the original papers and dataset DOIs when using the data itself.

