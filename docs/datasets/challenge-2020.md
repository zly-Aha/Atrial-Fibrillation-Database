# PhysioNet/CinC Challenge 2020

## 基本信息

| 字段 | 内容 |
| --- | --- |
| 官方链接 | https://physionet.org/content/challenge-2020/1.0.2/ |
| 发布方 | PhysioNet |
| 版本 | 1.0.2 |
| 信号类型 | 12 导联 ECG |
| 训练记录 | 43,101 条 |
| 采样率 | 257 Hz 至 1000 Hz，因来源而异 |
| 标注 | SNOMED-CT 诊断标签 |
| 许可 | CC BY 4.0 |
| 访问方式 | 公开下载 |
| DOI | 10.13026/dvyd-kd57 |

## 数据内容

训练集整合了多个公开来源，包括 CPSC、CPSC-Extra、INCART、PTB、PTB-XL 和 Georgia 12-lead ECG Challenge，覆盖多种心律与形态异常。诊断标签使用 SNOMED-CT 编码，房颤是其中一类。

## 推荐用途

- 12 导联 ECG 多标签分类
- 房颤相关诊断标签识别
- 跨中心与跨设备泛化研究
- 类别不平衡与多任务学习

## 使用要点

- 各来源采样率不同，需统一重采样或分别处理。
- 测试集未公开，不要尝试复现官方隐藏测试集划分。
- 标签体系为 SNOMED-CT，使用前请阅读官方标签说明。
- 引用时需同时引用 Challenge 论文和所使用的子数据库。

## 引用

Perez Alday EA, Gu A, Shah AJ, Robichaux C, Wong AI, Liu C, Liu F, Rad AB, Elola A, Seyedi S, Li Q, Sharma A, Clifford GD, Reyna MA. Classification of 12-lead ECGs: the PhysioNet/Computing in Cardiology Challenge 2020. Physiological Measurement. 2020.

