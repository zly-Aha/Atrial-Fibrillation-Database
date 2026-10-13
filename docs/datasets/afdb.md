# MIT-BIH Atrial Fibrillation Database (afdb)

## 基本信息

| 字段 | 内容 |
| --- | --- |
| 官方链接 | https://physionet.org/content/afdb/1.0.0/ |
| 发布方 | PhysioNet |
| 版本 | 1.0.0 |
| 信号类型 | 双导联 ECG |
| 记录数量 | 25 条 |
| 记录时长 | 每条 10 小时 |
| 采样率 | 250 Hz |
| 许可 | ODC-BY 1.0 |
| 访问方式 | 公开下载 |
| DOI | 10.13026/C2MW2D |

## 数据内容

该数据库主要收录房颤与房扑节律的长程 ECG，节律标注包括房颤、房扑、交界性节律和其他节律。心搏标注由自动检测生成，部分记录提供人工校正版本。

## 推荐用途

- 房颤与房扑分类
- 基于 RR 间期或心率的检测算法
- 节律转换分析
- 算法鲁棒性测试

## 使用要点

- 研究房颤本身时优先使用人工校正的 `.qrsc` 标注。
- 研究自动检测鲁棒性时可使用自动生成的 `.qrs` 标注。
- 部分原始磁带数据存在不可读片段，官方以零值样本补齐。

## 引用

Moody GB, Mark RG. A new method for detecting atrial fibrillation using R-R intervals. Computers in Cardiology. 1983;10:227-230.

