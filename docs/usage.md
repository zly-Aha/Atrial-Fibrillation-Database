# 使用说明

## 1. 环境准备

推荐使用 Python 进行数据读取与预处理：

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
pip install wfdb numpy pandas scipy matplotlib
```

`wfdb` 用于读取 PhysioNet 的 WFDB 格式数据；`numpy`、`pandas`、`scipy` 和 `matplotlib` 用于分析与可视化。

## 2. 下载数据

### 使用仓库脚本

```powershell
.\scripts\download.ps1 -List
.\scripts\download.ps1 -Dataset ltafdb
.\scripts\download.ps1 -Dataset afdb, mitdb
```

脚本优先使用 `wget.exe`；如果系统没有 `wget.exe`，会自动改用 Windows 自带的 `curl.exe` 逐文件下载。1.1 TB 的 `icentia11k` 建议使用 AWS CLI 或官方提供的分卷方式获取。

### 使用 wget

```bash
wget -r -N -c -np https://physionet.org/files/ltafdb/1.0.0/
wget -r -N -c -np https://physionet.org/files/afdb/1.0.0/
wget -r -N -c -np https://physionet.org/files/mitdb/1.0.0/
wget -r -N -c -np https://physionet.org/files/challenge-2020/1.0.2/
```

### 使用 AWS CLI

PhysioNet 的开放数据可通过匿名方式从 S3 同步：

```bash
aws s3 sync --no-sign-request s3://physionet-open/ltafdb/1.0.0/ data/ltafdb/
aws s3 sync --no-sign-request s3://physionet-open/afdb/1.0.0/ data/afdb/
aws s3 sync --no-sign-request s3://physionet-open/mitdb/1.0.0/ data/mitdb/
```

### Zenodo 数据

- IRIDIA-AF：在记录页下载 `iridia-af-records-v1.0.1.zip` 和 `iridia-af-metadata-v1.0.1.csv`。
- Zenodo 5815074：该记录为受限访问，需要先在页面提交访问申请，获得授权后再下载。

## 3. 读取 WFDB 数据

```python
import wfdb

# 读取单条记录
record = wfdb.rdrecord("data/mitdb/100")
annotation = wfdb.rdann("data/mitdb/100", "atr")

print(record.sig_name)
print(record.fs)
print(annotation.symbol[:20])

# 绘制前 10 秒
wfdb.plot_wfdb(
    record=record,
    annotation=annotation,
    time_units="seconds",
    plot_sym=True,
    figsize=(12, 4),
)
```

## 4. 建议的预处理流程

1. 统一采样率，例如重采样到 250 Hz 或 500 Hz。
2. 去除基线漂移与工频干扰，例如 0.5 Hz 高通滤波和 50 Hz 或 60 Hz 陷波。
3. 按固定窗口切分信号，例如 30 秒、60 秒或 10 分钟。
4. 将节律标注映射为窗口标签，并记录标签生成规则。
5. 按患者划分训练集、验证集和测试集，避免同一患者跨集合泄漏。
6. 保存划分清单与随机种子，保证实验可复现。

## 5. 评测注意事项

- 不同数据集的采样率、导联数、标注粒度和房颤定义不同，跨库评测需要明确适配策略。
- 报告指标时同时说明数据版本、记录列表、排除标准和预处理参数。
- 长程数据中正负样本严重不平衡，建议同时报告 AUROC、AUPRC、敏感度、特异度和 F1。
- 涉及患者数据时遵守数据使用协议和所在机构伦理要求。

## 6. 许可提醒

- `icentia11k` 仅限非商业用途，衍生作品需采用相同许可。
- `Zenodo 5815074` 为受限访问，禁止在未获授权时下载或再分发。
- PhysioNet 的 ODC-BY 1.0 数据需要保留署名。
- Challenge 2020 采用 CC BY 4.0，IRIDIA-AF 采用 CC BY 4.0。

