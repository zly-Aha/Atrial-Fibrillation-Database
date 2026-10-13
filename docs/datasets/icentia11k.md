# Icentia11k

## 基本信息

| 字段 | 内容 |
| --- | --- |
| 官方链接 | https://physionet.org/content/icentia11k-continuous-ecg/1.0/ |
| 发布方 | PhysioNet |
| 版本 | 1.0 |
| 信号类型 | 单导联连续 ECG |
| 患者数量 | 11,000 |
| 标注心搏 | 约 2,774,054,987 个 |
| 采样率 | 250 Hz |
| 许可 | CC BY-NC-SA 4.0 |
| 访问方式 | 公开下载，仅限非商业用途 |
| DOI | 10.13026/kk0v-r952 |

## 数据内容

数据按患者和片段组织，每位患者包含 3 至 14 天的记录，片段长度约为 70 分钟。心律标注包括正常窦性心律、房颤和房扑，心搏标注包括正常心搏、房性早搏、室性早搏和未分类心搏。

## 推荐用途

- 长程心律表征学习
- 房颤与房扑检测
- 自监督与迁移学习
- 大规模心搏分类

## 使用要点

- 数据集规模约 1.1 TB，下载和存储前先规划磁盘空间。
- 仅限非商业用途，衍生作品需采用相同许可。
- 数据来自临床患者，年龄和病程分布有偏，不能视为人群随机样本。
- 建议使用官方提供的读取脚本与 GitHub 示例。

## 引用

Tan S, Ortiz-Gagné S, Beaudoin-Gagnon N, Fecteau P, Courville A, Bengio Y, Cohen JP. Icentia11k Single Lead Continuous Raw Electrocardiogram Dataset. PhysioNet. 2022.

Tan S, Androz G, Ortiz-Gagné S, Chamseddine A, Fecteau P, Courville A, Bengio Y, Cohen JP. Icentia11K: An Unsupervised Representation Learning Dataset for Arrhythmia Subtype Discovery. Computing in Cardiology. 2021.

