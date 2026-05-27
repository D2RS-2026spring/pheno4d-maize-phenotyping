# 鍩轰簬 Pheno4D 鐐逛簯鏁版嵁鐨勭帀绫虫椂搴忚〃鍨嬪鐜板垎鏋?
## 1. 椤圭洰绠€浠?
鏈」鐩负鈥滄暟鎹┍鍔ㄧ殑鍙噸澶嶆€х爺绌垛€濊绋嬬粨璇鹃」鐩紝澶嶇幇璁烘枃锛?
Schunck, D., Magistri, F., Rosu, R. A., et al. (2021). Pheno4D: A spatio-temporal dataset of maize and tomato plant point clouds for phenotyping and advanced plant analysis. PLOS ONE, 16(8), e0256340. DOI: 10.1371/journal.pone.0256340

椤圭洰涓嶅畬鏁村鐜拌鏂囦腑鐨勬繁搴﹀涔犳ā鍨嬶紝鑰屾槸閫夊彇 Pheno4D 鐜夌背鐐逛簯鏁版嵁涓殑 `Maize01`锛屽畬鎴愮偣浜戣鍙栥€佹牚楂樿〃鍨嬫彁鍙栥€佹椂搴忓彲瑙嗗寲鍜岀粨鏋滆В閲娿€?
## 2. 鍦ㄧ嚎鎶ュ憡

椤圭洰缃戦〉鎶ュ憡鍦板潃锛?
https://d2rs-2026spring.github.io/pheno4d-maize-phenotyping/

## 3. 椤圭洰浠撳簱涓?Issue

椤圭洰浠撳簱锛?
https://github.com/D2RS-2026spring/pheno4d-maize-phenotyping

Issue 娉ㄥ唽锛?
https://github.com/D2RS-2026spring/projects/issues/145

## 4. 鏁版嵁鏉ユ簮

鏁版嵁闆嗗悕绉帮細Pheno4D

瀹樻柟鏁版嵁椤甸潰锛?
https://www.ipb.uni-bonn.de/data/pheno4d/

鏁版嵁涓嬭浇鍦板潃锛?
https://www.ipb.uni-bonn.de/html/projects/Pheno4D/Pheno4D.zip

鐢变簬鍘熷鏁版嵁鏂囦欢杈冨ぇ锛屾湰浠撳簱涓嶄笂浼?`Pheno4D.zip` 鍜岃В鍘嬪悗鐨勫師濮嬬偣浜戞枃浠躲€傚鐜拌€呴渶瑕佽嚜琛屼笅杞藉師濮嬫暟鎹紝骞跺皢鍏舵斁缃湪 `data/raw/` 鐩綍涓嬨€?
## 5. 椤圭洰缁撴瀯

```text
data/raw/          鍘熷鏁版嵁锛屼笉涓婁紶鍒?GitHub
data/processed/    棰勫鐞嗗悗鐨勭粨鏋滆〃
scripts/           鏁版嵁璇诲彇銆佹竻娲楀拰鍒嗘瀽鑴氭湰
results/figures/   杈撳嚭鍥剧墖
results/tables/    杈撳嚭琛ㄦ牸
report/            鍏朵粬鎶ュ憡鏉愭枡
docs/              Quarto 娓叉煋鍚庣殑缃戦〉
index.qmd          Quarto 涓绘姤鍛?_quarto.yml        Quarto 椤圭洰閰嶇疆
README.md          椤圭洰璇存槑涓庡鐜版楠?```

## 6. 澶嶇幇鐜

鏈」鐩富瑕佷娇鐢細

- R 4.6.0
- Quarto 1.9.38
- R 鍖咃細knitr銆乺markdown

鍏朵腑锛宍scripts/01_extract_maize01_height.R` 鍙娇鐢?base R锛屽彲浠ュ噺灏戝鐜扮幆澧冧緷璧栥€?
## 7. 瀹屾暣澶嶇幇姝ラ

### 7.1 鍏嬮殕浠撳簱

```bash
git clone https://github.com/D2RS-2026spring/pheno4d-maize-phenotyping.git
cd pheno4d-maize-phenotyping
```

### 7.2 涓嬭浇鍘熷鏁版嵁

浠?Pheno4D 瀹樻柟椤甸潰涓嬭浇 `Pheno4D.zip`锛屽苟鏀惧叆锛?
```text
data/raw/Pheno4D.zip
```

### 7.3 瑙ｅ帇 Maize01 鏁版嵁

鏈」鐩彧浣跨敤 `Pheno4D/Maize01/` 鏂囦欢澶广€傚彲浠ユ墜鍔ㄨВ鍘嬶紝涔熷彲浠ュ湪 PowerShell 涓繍琛屼互涓嬪懡浠わ細

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

瑙ｅ帇鍚庡簲寰楀埌锛?
```text
data/raw/Pheno4D/Maize01/M01_0313_a.txt
data/raw/Pheno4D/Maize01/M01_0314.txt
...
data/raw/Pheno4D/Maize01/M01_0325_a.txt
```

### 7.4 杩愯鏁版嵁鍒嗘瀽鑴氭湰

```bash
Rscript scripts/01_extract_maize01_height.R
```

杩愯鍚庝細鐢熸垚锛?
```text
data/processed/maize01_height.csv
results/figures/maize01_height_trend.png
```

### 7.5 娓叉煋 Quarto 鎶ュ憡

濡傛灉 R 涓皻鏈畨瑁?`knitr` 鍜?`rmarkdown`锛屽厛杩愯锛?
```bash
Rscript -e "install.packages(c('knitr', 'rmarkdown'), repos='https://cloud.r-project.org')"
```

鐒跺悗娓叉煋鎶ュ憡锛?
```bash
quarto render
```

娓叉煋瀹屾垚鍚庯紝鍙互鎵撳紑锛?
```text
docs/index.html
```

涔熷彲浠ヨ闂湪绾挎姤鍛婏細

https://d2rs-2026spring.github.io/pheno4d-maize-phenotyping/

## 8. 褰撳墠澶嶇幇缁撴灉

鏈」鐩熀浜?`Maize01` 鐨?12 涓椂鐩哥偣浜戞枃浠讹紝鎻愬彇绗笁鍒?`z` 鍧愭爣锛屽苟浣跨敤锛?
```text
height = max(z) - min(z)
```

璁＄畻鐜夌背鏍珮杩戜技鍊笺€?
缁撴灉琛ㄦ槑锛宍Maize01` 鐨勭偣浜戦珮搴︽€讳綋闅忔壂鎻忔棩鏈熷鍔犺€屼笂鍗囷紝璇存槑涓夌淮鐐逛簯鑳藉鍙嶆槧鐜夌背鍗曟牚鍦ㄨ繛缁娴嬫湡鍐呯殑鐢熼暱鍙樺寲銆?
## 9. 灏忕粍鎴愬憳涓庤础鐚?
| 鎴愬憳 | 涓昏璐＄尞 |
|---|---|
| 鎴愬憳1 | 椤圭洰浠撳簱鍒涘缓銆両ssue 娉ㄥ唽銆侀」鐩粨鏋勬惌寤?|
| 鎴愬憳2 | 鏁版嵁涓嬭浇涓庢暣鐞?|
| 鎴愬憳3 | 鐐逛簯棰勫鐞嗕笌鏍珮璁＄畻 |
| 鎴愬憳4 | Quarto 鎶ュ憡銆丷EADME 涓庡鐜版祴璇?|

鍚庣画灏嗘牴鎹疄闄呭皬缁勬垚鍛樺拰 GitHub 鎻愪氦璁板綍鏇存柊銆