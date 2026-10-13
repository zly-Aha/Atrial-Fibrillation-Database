# 数据源说明

本文档记录各数据集的许可、访问方式和引用要求。信息以官方页面为准，使用前请再次核对原站。

## 1. Long-Term AF Database (ltafdb)

- 官方链接：https://physionet.org/content/ltafdb/1.0.0/
- 发布方：PhysioNet
- 内容：84 条双导联长程 ECG，通常 24 至 25 小时，包含阵发性和持续性房颤
- 采样率：128 Hz
- 标注：人工复核的节律与心搏标注
- 许可：Open Data Commons Attribution License v1.0
- DOI：10.13026/C2QG6Q
- 引用：Petrutiu S, Sahakian AV, Swiryn S. Abrupt changes in fibrillatory wave characteristics at the termination of paroxysmal atrial fibrillation in humans. Europace. 2007;9:466-470.

## 2. MIT-BIH Atrial Fibrillation Database (afdb)

- 官方链接：https://physionet.org/content/afdb/1.0.0/
- 发布方：PhysioNet
- 内容：25 条 10 小时双导联 ECG，主要记录房颤与房扑节律
- 采样率：250 Hz
- 标注：房颤、房扑、交界性节律和其他节律
- 许可：Open Data Commons Attribution License v1.0
- DOI：10.13026/C2MW2D
- 引用：Moody GB, Mark RG. A new method for detecting atrial fibrillation using R-R intervals. Computers in Cardiology. 1983;10:227-230.

## 3. MIT-BIH Arrhythmia Database (mitdb)

- 官方链接：https://physionet.org/content/mitdb/1.0.0/
- 发布方：PhysioNet
- 内容：48 条约 30 分钟的双导联 ECG，来自 47 名受试者
- 采样率：360 Hz
- 标注：心搏、节律、信号质量和注释
- 许可：Open Data Commons Attribution License v1.0
- DOI：10.13026/C2F305
- 引用：Moody GB, Mark RG. The impact of the MIT-BIH Arrhythmia Database. IEEE Engineering in Medicine and Biology. 2001;20(3):45-50.

## 4. Icentia11k

- 官方链接：https://physionet.org/content/icentia11k-continuous-ecg/1.0/
- 发布方：PhysioNet
- 内容：11,000 名患者的单导联连续 ECG，约 5.42 亿个标注心搏，总规模约 1.1 TB
- 采样率：250 Hz
- 标注：心搏类型与心律段落，包括正常心律、房颤和房扑
- 许可：Creative Commons Attribution-NonCommercial-ShareAlike 4.0
- DOI：10.13026/kk0v-r952
- 引用：
  - Tan S, Ortiz-Gagné S, Beaudoin-Gagnon N, Fecteau P, Courville A, Bengio Y, Cohen JP. Icentia11k Single Lead Continuous Raw Electrocardiogram Dataset. PhysioNet. 2022.
  - Tan S, Androz G, Ortiz-Gagné S, Chamseddine A, Fecteau P, Courville A, Bengio Y, Cohen JP. Icentia11K: An Unsupervised Representation Learning Dataset for Arrhythmia Subtype Discovery. Computing in Cardiology. 2021.

注意：该数据集禁止商业使用，衍生作品需遵循相同许可。商业用途请先联系发布方。

## 5. PhysioNet/CinC Challenge 2020

- 官方链接：https://physionet.org/content/challenge-2020/1.0.2/
- 发布方：PhysioNet
- 内容：多来源 12 导联 ECG，训练集 43,101 条记录，覆盖多种心律与形态异常
- 采样率：257 Hz 至 1000 Hz，因来源而异
- 标注：SNOMED-CT 诊断标签，包含房颤相关类别
- 许可：Creative Commons Attribution 4.0
- DOI：10.13026/dvyd-kd57
- 引用：Perez Alday EA, Gu A, Shah AJ, et al. Classification of 12-lead ECGs: the PhysioNet/Computing in Cardiology Challenge 2020. Physiological Measurement. 2020.

## 6. IRIDIA-AF

- 官方链接：https://zenodo.org/records/8405941
- 发布方：Zenodo
- 内容：167 条长程 2 导联 Holter ECG，来自 152 名阵发性房颤患者，累计约 2,400 万秒
- 采样率：200 Hz
- 标注：由心血管专科医生和心脏专科护士人工标注并复核的房颤片段
- 许可：Creative Commons Attribution 4.0
- DOI：10.5281/zenodo.8405941
- 引用：Gilon C, Grégoire JM, Mathieu M, Carlier S, Bersini H. IRIDIA-AF, a large paroxysmal atrial fibrillation long-term electrocardiogram monitoring database. Scientific Data. 2023.

## 7. Long-term ECG and wrist PPG with annotated AF

- 官方链接：https://zenodo.org/records/5815074
- 发布方：Zenodo
- 内容：8 名疑似房颤患者同步采集的长程 ECG 与腕部 PPG，共约 1,306 小时
- 采样率：PPG 100 Hz，ECG 500 Hz
- 标注：房颤片段与 QRS 时刻
- 许可：自定义非商业许可
- DOI：10.5281/zenodo.5815074
- 访问：受限访问，需要在 Zenodo 页面提交访问申请
- 引用：使用前查看 Zenodo 记录页给出的作者和引用要求

## 8. Peter Charlton Datasets

- 官方链接：https://peterhcharlton.github.io/info/datasets
- 内容：ECG、PPG 及相关生理信号数据集的汇总索引
- 说明：各数据集许可与访问方式不同，请进入对应数据集页面确认
- 引用：引用对应数据集的原始论文和数据说明

## 9. PPGArrhythmiaDetection

- 官方链接：https://github.com/zdzdliu/PPGArrhythmiaDetection
- 发布方：GitHub（zdzdliu）
- 内容：PPG 多分类心律不齐检测的代码与数据（验证集、测试集）；研究共纳入 228 名患者、118,217 对 10 秒 PPG/ECG 片段
- 信号：腕部 PPG，片段长度 10 秒
- 采样率：100 Hz
- 标注：0 窦性心律、1 室性早搏、2 房性早搏、3 室性心动过速、4 室上性心动过速、5 房颤
- 许可：仓库未声明开源许可证，使用与再分发前请先联系原作者确认
- DOI：无
- 引用：Liu Z, Zhou B, Jiang Z, Chen X, Li Y, Tang M, Miao F. Multiclass Arrhythmia Detection and Classification From Photoplethysmography Signals Using a Deep Convolutional Neural Network. Journal of the American Heart Association. 2022;11(7):e023555.

注意：该仓库未附许可证文件。在获得作者明确授权前，请仅按原仓库用途使用代码与数据，不要再分发。

