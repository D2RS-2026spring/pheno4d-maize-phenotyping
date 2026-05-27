# 基于 Pheno4D 点云数据的玉米时序表型复现分析

## 1. 项目简介

本项目为“数据驱动的可重复性研究”课程结课项目，复现论文：

Schunck, D., Magistri, F., Rosu, R. A., et al. (2021). Pheno4D: A spatio-temporal dataset of maize and tomato plant point clouds for phenotyping and advanced plant analysis. PLOS ONE, 16(8), e0256340. DOI: 10.1371/journal.pone.0256340

项目不完整复现论文中的深度学习模型，而是选取 Pheno4D 玉米点云数据，完成点云读取、株高表型提取、时序可视化和结果解释。

## 2. 项目仓库

https://github.com/D2RS-2026spring/pheno4d-maize-phenotyping

## 3. Issue 注册

https://github.com/D2RS-2026spring/projects/issues/145

## 4. 项目结构

```text
data/raw/          原始数据
data/processed/    预处理后的数据
scripts/           数据下载、清洗和分析脚本
results/figures/   输出图片
results/tables/    输出表格
report/            其他报告材料
index.qmd          Quarto 主报告
_quarto.yml        Quarto 项目配置
README.md          项目说明与复现步骤
```

## 5. 计划复现内容

本项目计划复现论文中“高精度三维点云可用于玉米动态表型分析”的核心思路。具体包括：

1. 读取 Pheno4D 玉米点云数据；
2. 对点云数据进行基础预处理；
3. 提取玉米株高等基础表型指标；
4. 绘制玉米株高随时间变化的趋势图；
5. 使用 Quarto 生成可重复研究报告。

## 6. 复现步骤

后续项目完成后，可使用以下命令复现报告：

```bash
quarto render
```

渲染完成后，可在 `docs/index.html` 中查看结果。

## 7. 小组成员与贡献

| 成员 | 主要贡献 |
|---|---|
| 成员1 | 数据下载与整理 |
| 成员2 | 点云预处理与株高计算 |
| 成员3 | 数据分析与可视化 |
| 成员4 | Quarto 报告、README 与复现测试 |

后续将根据实际贡献更新。
