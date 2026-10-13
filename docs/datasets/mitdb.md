# MIT-BIH Arrhythmia Database (mitdb)

## 基本信息

| 字段 | 内容 |
| --- | --- |
| 官方链接 | https://physionet.org/content/mitdb/1.0.0/ |
| 发布方 | PhysioNet |
| 版本 | 1.0.0 |
| 信号类型 | 双导联 ECG |
| 记录数量 | 48 条，来自 47 名受试者 |
| 记录时长 | 约 30 分钟 |
| 采样率 | 360 Hz |
| 许可 | ODC-BY 1.0 |
| 访问方式 | 公开下载 |
| DOI | 10.13026/C2F305 |

## 数据内容

该数据库是心律不齐检测领域的经典基准，包含心搏、节律、信号质量和注释信息，约 11 万个心搏标注。数据可用于心搏检测、心搏分类和心律不齐分析。

## 推荐用途

- 心搏检测与分类
- 心律不齐评测基准
- 预处理方法对比
- 与房颤数据库联合分析

## 使用要点

- 记录 201 和 202 来自同一名受试者，患者独立划分时应放在同一子集。
- 部分记录专门选取了少见心律不齐，不能直接用于估计人群患病率。
- 导联配置因记录而异，进行多导联分析前需检查头文件。

## 引用

Moody GB, Mark RG. The impact of the MIT-BIH Arrhythmia Database. IEEE Engineering in Medicine and Biology. 2001;20(3):45-50.

