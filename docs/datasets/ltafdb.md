# Long-Term AF Database (ltafdb)

## 基本信息

| 字段 | 内容 |
| --- | --- |
| 官方链接 | https://physionet.org/content/ltafdb/1.0.0/ |
| 发布方 | PhysioNet |
| 版本 | 1.0.0 |
| 信号类型 | 双导联 ECG |
| 记录数量 | 84 条 |
| 记录时长 | 通常 24 至 25 小时 |
| 采样率 | 128 Hz |
| 许可 | ODC-BY 1.0 |
| 访问方式 | 公开下载 |
| DOI | 10.13026/C2QG6Q |

## 数据内容

该数据库收录阵发性和持续性房颤患者的长程 ECG。数据适合研究房颤发作与终止、心律变化和长时程节律监测算法。数据库附带心搏与节律标注，其中节律标注经过人工复核。

## 推荐用途

- 房颤检测与房颤负荷估计
- 房颤发作与终止预测
- 长程节律分析
- 跨库泛化评测

## 使用要点

- 记录时长以小时计，读取时建议按窗口分段处理。
- 心律标注包括房颤、房扑和其他节律，训练前需确认标签映射规则。
- 引用时同时引用原始论文与 PhysioNet 数据 DOI。

## 引用

Petrutiu S, Sahakian AV, Swiryn S. Abrupt changes in fibrillatory wave characteristics at the termination of paroxysmal atrial fibrillation in humans. Europace. 2007;9:466-470.

