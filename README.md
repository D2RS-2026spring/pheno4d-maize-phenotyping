# 基于 Pheno4D 点云数据的玉米时序表型复现分析

## 1. 项目简介

本项目为“数据驱动的可重复性研究”课程结课项目，复现论文：

Schunck, D., Magistri, F., Rosu, R. A., et al. (2021). Pheno4D: A spatio-temporal dataset of maize and tomato plant point clouds for phenotyping and advanced plant analysis. PLOS ONE, 16(8), e0256340. DOI: 10.1371/journal.pone.0256340

项目不完整复现论文中的深度学习模型，而是选取 Pheno4D 玉米点云数据中的 `Maize01`，完成点云读取、株高表型提取、时序可视化和结果解释。

## 2. 在线报告

项目网页报告地址：

https://d2rs-2026spring.github.io/pheno4d-maize-phenotyping/

## 3. 项目仓库与 Issue

项目仓库：

https://github.com/D2RS-2026spring/pheno4d-maize-phenotyping

Issue 注册：

https://github.com/D2RS-2026spring/projects/issues/145

## 4. 数据来源

数据集名称：Pheno4D

官方数据页面：

https://www.ipb.uni-bonn.de/data/pheno4d/

数据下载地址：

https://www.ipb.uni-bonn.de/html/projects/Pheno4D/Pheno4D.zip

由于原始数据文件较大，本仓库不上传 `Pheno4D.zip` 和解压后的原始点云文件。复现者需要自行下载原始数据，并将其放置在 `data/raw/` 目录下。

## 5. 项目结构

```text
data/raw/          原始数据，不上传到 GitHub
data/processed/    预处理后的结果表
scripts/           数据读取、清洗和分析脚本
results/figures/   输出图片
results/tables/    输出表格
report/            其他报告材料
docs/              Quarto 渲染后的网页
index.qmd          Quarto 主报告
_quarto.yml        Quarto 项目配置
README.md          项目说明与复现步骤
```

## 6. 复现环境

本项目主要使用：

- R 4.6.0
- Quarto 1.9.38
- R 包：knitr、rmarkdown

其中，`scripts/01_extract_maize01_height.R` 只使用 base R，可以减少复现环境依赖。

## 7. 完整复现步骤

### 7.1 克隆仓库

```bash
git clone https://github.com/D2RS-2026spring/pheno4d-maize-phenotyping.git
cd pheno4d-maize-phenotyping
```

### 7.2 下载原始数据

从 Pheno4D 官方页面下载 `Pheno4D.zip`，并放入：

```text
data/raw/Pheno4D.zip
```

### 7.3 解压 Maize01 数据

本项目只使用 `Pheno4D/Maize01/` 文件夹。可以手动解压，也可以在 PowerShell 中运行以下命令：

```powershell
Add-Type -AssemblyName System.IO.Compression.FileSystem

$zipPath = "data\raw\Pheno4D.zip"
$outDir = "data\raw"

$zip = [System.IO.Compression.ZipFile]::OpenRead((Resolve-Path $zipPath))

$entries = $zip.Entries | Where-Object {
    $_.FullName -like "Pheno4D/Maize01/*" -and $_.Name -ne ""
}

foreach ($entry in $entries) {
    $targetPath = Join-Path $outDir ($entry.FullName -replace "/", "\")
    $targetDir = Split-Path $targetPath

    if (!(Test-Path $targetDir)) {
        New-Item -ItemType Directory -Force -Path $targetDir | Out-Null
    }

    [System.IO.Compression.ZipFileExtensions]::ExtractToFile($entry, $targetPath, $true)
}

$zip.Dispose()
```

解压后应得到：

```text
data/raw/Pheno4D/Maize01/M01_0313_a.txt
data/raw/Pheno4D/Maize01/M01_0314.txt
...
data/raw/Pheno4D/Maize01/M01_0325_a.txt
```

### 7.4 运行数据分析脚本

```bash
Rscript scripts/01_extract_maize01_height.R
```

运行后会生成：

```text
data/processed/maize01_height.csv
results/figures/maize01_height_trend.png
```

### 7.5 渲染 Quarto 报告

如果 R 中尚未安装 `knitr` 和 `rmarkdown`，先运行：

```bash
Rscript -e "install.packages(c('knitr', 'rmarkdown'), repos='https://cloud.r-project.org')"
```

然后渲染报告：

```bash
quarto render
```

渲染完成后，可以打开：

```text
docs/index.html
```

也可以访问在线报告：

https://d2rs-2026spring.github.io/pheno4d-maize-phenotyping/

## 8. 当前复现结果

本项目基于 `Maize01` 的 12 个时相点云文件，提取第三列 `z` 坐标，并使用：

```text
height = max(z) - min(z)
```

计算玉米株高近似值。

结果表明，`Maize01` 的点云高度总体随扫描日期增加而上升，说明三维点云能够反映玉米单株在连续观测期内的生长变化。

## 9. 小组成员与贡献

| 成员 | 主要贡献 |
|---|---|
| 成员1 | 项目仓库创建、Issue 注册、项目结构搭建 |
| 成员2 | 数据下载与整理 |
| 成员3 | 点云预处理与株高计算 |
| 成员4 | Quarto 报告、README 与复现测试 |

后续将根据实际小组成员和 GitHub 提交记录更新。