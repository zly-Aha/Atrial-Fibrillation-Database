# PPGArrhythmiaDetection

## 基本信息

| 字段 | 内容 |
| --- | --- |
| 官方链接 | https://github.com/zdzdliu/PPGArrhythmiaDetection |
| 发布方 | GitHub（zdzdliu） |
| 版本 | main 分支 |
| 信号类型 | 腕部 PPG |
| 患者数量 | 228 |
| 记录规模 | 118,217 对 10 秒 PPG/ECG 片段 |
| 片段长度 | 10 秒 |
| 采样率 | 100 Hz |
| 标注 | 6 类心律标签 |
| 许可 | 未声明，以原仓库为准 |
| 访问方式 | 公开代码与验证/测试集 |
| DOI | 无 |

## 数据内容

本研究同步采集 ECG 与 PPG，由两名心内科医生依据 ECG 结果标注心律类别。数据以每位受试者一个 `.mat` 文件的形式提供，包含 `ppgseg` 信号片段和对应的 `labels` 标签。仓库同时提供 `PPGVGGNet.ipynb`、`FeaVisuGuided.ipynb` 等代码。

## 标签定义

| 标签 | 心律类型 |
| --- | --- |
| 0 | 窦性心律 |
| 1 | 室性早搏 |
| 2 | 房性早搏 |
| 3 | 室性心动过速 |
| 4 | 室上性心动过速 |
| 5 | 房颤 |

## 推荐用途

- 基于 PPG 的房颤检测
- PPG 多分类心律不齐识别
- 深度学习模型的可解释性分析
- ECG 与 PPG 标注一致性研究

## 使用要点

- 这是本索引中少见的 PPG 多分类心律不齐数据集，适合房颤与异位搏动的联合分类任务。
- 论文在独立测试集（45 名患者、23,384 条 PPG 片段）上报告总体准确率 85.0%，micro-average AUC 为 0.978。
- 仓库未声明开源许可证，使用与再分发前请先联系原作者确认。
- 数据仅供研究参考；实际临床使用需要独立验证。

## 引用

Liu Z, Zhou B, Jiang Z, Chen X, Li Y, Tang M, Miao F. Multiclass Arrhythmia Detection and Classification From Photoplethysmography Signals Using a Deep Convolutional Neural Network. Journal of the American Heart Association. 2022;11(7):e023555.

