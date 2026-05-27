# 数据说明

本项目使用 Pheno4D 公开数据集中的玉米点云数据。

## 数据来源

- 数据集名称：Pheno4D
- 论文：Schunck et al. (2021), Pheno4D: A spatio-temporal dataset of maize and tomato plant point clouds for phenotyping and advanced plant analysis
- DOI：10.1371/journal.pone.0256340
- 官方数据页面：https://www.ipb.uni-bonn.de/data/pheno4d/
- 数据下载地址：https://www.ipb.uni-bonn.de/html/projects/Pheno4D/Pheno4D.zip

## 数据内容

官方数据集包含玉米和番茄的多时相三维点云数据。本项目只使用其中的玉米数据。

玉米数据包括 7 株玉米、12 天观测，共 84 个玉米点云。部分文件带有人工标注，文件名中带 `_a` 的表示该点云包含标注信息。

## 本项目使用方式

由于 Pheno4D 原始数据文件较大，本仓库不直接上传原始 zip 文件和解压后的原始点云文件。复现时需要根据 README.md 中的说明手动下载数据，或运行后续提供的数据下载脚本。

后续分析将从玉米点云中提取基础表型指标，例如株高，并整理为较小的 `data/processed/` 文件用于报告复现。
