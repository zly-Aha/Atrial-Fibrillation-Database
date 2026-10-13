# 贡献指南

感谢你为本资源索引补充或修订内容。为保证数据记录可追溯、可复核，请遵循以下约定。

## 可以提交的内容

- 新的公开 AF、ECG 或 PPG 数据集条目
- 数据集版本、许可、访问方式或引用信息的更新
- 下载脚本、读取示例和文档修正

## 不应提交的内容

- 未公开的临床数据、患者隐私信息或个人身份信息
- 未获得再分发授权的原始数据文件
- 大体积数据、模型权重或缓存文件
- API key、token、密码或访问凭据

## 新增数据集的要求

1. 在 `docs/datasets/` 下按模板新增一个 Markdown 文件。
2. 同步更新 `docs/data-sources.md`、`metadata/datasets.csv` 和 `metadata/datasets.yaml`。
3. 记录以下字段：官方链接、发布方、版本、信号类型、采样率、规模、标注类型、许可、访问状态、引用信息。
4. 如果许可为受限访问或非商业许可，必须在文档中显著说明。
5. 提交前确认所有链接可访问，且没有复制受限数据。

## 提交信息建议

```text
docs: add <dataset-name> dataset entry
fix: correct license for <dataset-name>
chore: update download script
```

## 数据放置约定

下载的数据统一放在本地 `data/` 目录下，按数据集简称建立子目录。`data/` 已在 `.gitignore` 中排除，不会随提交上传。

