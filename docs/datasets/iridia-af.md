# IRIDIA-AF

## 基本信息

| 字段 | 内容 |
| --- | --- |
| 官方链接 | https://zenodo.org/records/8405941 |
| 发布方 | Zenodo |
| 版本 | 1.0.1 |
| 信号类型 | 双导联长程 ECG |
| 记录数量 | 167 条，来自 152 名患者 |
| 记录时长 | 19 至 95 小时，按 24 小时拆分 |
| 采样率 | 200 Hz |
| 标注 | 房颤片段，人工标注并复核 |
| 许可 | CC BY 4.0 |
| 访问方式 | 公开下载 |
| DOI | 10.5281/zenodo.8405941 |

## 数据内容

该数据库来自比利时门诊心脏病诊所，时间为 2006 年至 2017 年，包含阵发性房颤患者的长程 Holter 监测记录，总计约 2,400 万秒。房颤片段由心血管专科医生与心脏专科护士人工标注和复核。

## 推荐用途

- 房颤发作检测与负荷估计
- 长程 Holter 自动分析
- 房颤片段边界检测
- 与传统数据库的跨库泛化对比

## 使用要点

- 官方提供记录压缩包和元数据 CSV，建议同时下载。
- 记录被拆分为 24 小时文件，读取时注意记录拼接与时间对齐。
- 许可为 CC BY 4.0，使用时保留署名。

## 引用

Gilon C, Grégoire JM, Mathieu M, Carlier S, Bersini H. IRIDIA-AF, a large paroxysmal atrial fibrillation long-term electrocardiogram monitoring database. Scientific Data. 2023.

