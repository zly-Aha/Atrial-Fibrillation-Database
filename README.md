# Atrial Fibrillation Database

面向心房颤动（Atrial Fibrillation, AF）研究的公开资源索引，覆盖 ECG 与 PPG 信号、节律标注、心律不齐检测与长程监测数据集。本仓库不存储或再分发第三方数据，只维护链接、元数据、使用说明和下载辅助脚本。

## 资源一览

| 编号 | 数据库 | 信号 | 规模 | 许可 | 访问 |
| --- | --- | --- | --- | --- | --- |
| 01 | [Long-Term AF Database (ltafdb)](https://physionet.org/content/ltafdb/1.0.0/) | 2 导联 ECG | 84 条 24 小时记录 | ODC-BY 1.0 | 公开 |
| 02 | [MIT-BIH Atrial Fibrillation Database (afdb)](https://physionet.org/content/afdb/1.0.0/) | 2 导联 ECG | 25 条 10 小时记录 | ODC-BY 1.0 | 公开 |
| 03 | [MIT-BIH Arrhythmia Database (mitdb)](https://physionet.org/content/mitdb/1.0.0/) | 2 导联 ECG | 48 条约 30 分钟记录 | ODC-BY 1.0 | 公开 |
| 04 | [Icentia11k](https://physionet.org/content/icentia11k-continuous-ecg/1.0/) | 单导联 ECG | 11,000 名患者，约 1.1 TB | CC BY-NC-SA 4.0 | 公开，仅限非商业 |
| 05 | [PhysioNet/CinC Challenge 2020](https://physionet.org/content/challenge-2020/1.0.2/) | 12 导联 ECG | 43,101 条训练记录 | CC BY 4.0 | 公开 |
| 06 | [IRIDIA-AF](https://zenodo.org/records/8405941) | 2 导联 ECG | 167 条记录（152 名患者） | CC BY 4.0 | 公开 |
| 07 | [Long-term ECG and wrist PPG with annotated AF](https://zenodo.org/records/5815074) | ECG + 腕部 PPG | 8 名患者，1,306 小时 | 自定义非商业许可 | 需申请授权 |
| 08 | [Peter Charlton Datasets](https://peterhcharlton.github.io/info/datasets) | ECG、PPG 等 | 资源目录 | 以各数据集为准 | 汇总索引 |

## 目录结构

```text
Atrial-Fibrillation-Database/
├── README.md
├── LICENSE
├── CITATION.cff
├── CONTRIBUTING.md
├── .gitignore
├── data/
│   └── README.md              # 本地数据存放约定，数据本身不提交
├── docs/
│   ├── README.en.md            # English overview
│   ├── data-sources.md         # 数据源与许可细节
│   ├── usage.md                # 下载、读取与预处理说明
│   ├── datasets/               # 每个数据库一页
│   └── templates/              # 新增数据集记录模板
├── metadata/
│   ├── datasets.csv            # 机器可读数据清单
│   └── datasets.yaml           # 机器可读数据清单
└── scripts/
    └── download.ps1            # Windows 下载辅助脚本
```

## 快速开始

1. 阅读 [docs/data-sources.md](docs/data-sources.md) 确认许可与访问条件。
2. 参考 [docs/usage.md](docs/usage.md) 选择下载方式。
3. 使用 `scripts/download.ps1` 下载 PhysioNet 上的公开数据，或在 `data/` 下放置你已获得授权的本地数据。

```powershell
# 列出可用目标
.\scripts\download.ps1 -List

# 下载 ltafdb 到本地 data 目录
.\scripts\download.ps1 -Dataset ltafdb
```

## 许可说明

- 本仓库中的文档、元数据和脚本采用 [MIT License](LICENSE)。
- 第三方数据集不属于本仓库，其版权和许可归原发布方所有。
- 下载、引用、再分发或用于商业用途前，请逐一核对对应数据集的许可条款。
- `icentia11k` 采用 CC BY-NC-SA 4.0，禁止商业使用；`Zenodo 5815074` 为受限访问，需要向发布方申请授权。

## 引用

引用本仓库时请使用 [CITATION.cff](CITATION.cff)。使用具体数据集时，请引用原论文和数据集 DOI，详见 [docs/data-sources.md](docs/data-sources.md)。

## 贡献

新增或更新数据集记录前，请阅读 [CONTRIBUTING.md](CONTRIBUTING.md) 并同步更新 `metadata/datasets.csv` 与 `metadata/datasets.yaml`。

