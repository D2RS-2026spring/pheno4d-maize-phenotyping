# 閸╄桨绨?Pheno4D 閻愰€涚隘閺佺増宓侀惃鍕竴缁櫕妞傛惔蹇氥€冮崹瀣槻閻滄澘鍨庨弸?
## 1. 妞ゅ湱娲扮粻鈧禒?
閺堫剟銆嶉惄顔昏礋閳ユ粍鏆熼幑顕€鈹嶉崝銊ф畱閸欘垶鍣告径宥嗏偓褏鐖虹粚鍨涒偓婵婎嚦缁嬪绮ㄧ拠楣冦€嶉惄顕嗙礉婢跺秶骞囩拋鐑樻瀮閿?
Schunck, D., Magistri, F., Rosu, R. A., et al. (2021). Pheno4D: A spatio-temporal dataset of maize and tomato plant point clouds for phenotyping and advanced plant analysis. PLOS ONE, 16(8), e0256340. DOI: 10.1371/journal.pone.0256340

妞ゅ湱娲版稉宥呯暚閺佹潙顦查悳鎷岊啈閺傚洣鑵戦惃鍕箒鎼达箑顒熸稊鐘衬侀崹瀣剁礉閼板本妲搁柅澶婂絿 Pheno4D 閻滃鑳岄悙閫涚隘閺佺増宓佹稉顓犳畱 `Maize01`閿涘苯鐣幋鎰仯娴滄垼顕伴崣鏍モ偓浣圭墯妤傛銆冮崹瀣絹閸欐牓鈧焦妞傛惔蹇撳讲鐟欏棗瀵查崪宀€绮ㄩ弸婊喰掗柌濞库偓?
## 2. 閸︺劎鍤庨幎銉ユ啞

妞ゅ湱娲扮純鎴︺€夐幎銉ユ啞閸︽澘娼冮敍?
https://d2rs-2026spring.github.io/pheno4d-maize-phenotyping/

## 3. 妞ゅ湱娲版禒鎾崇氨娑?Issue

妞ゅ湱娲版禒鎾崇氨閿?
https://github.com/D2RS-2026spring/pheno4d-maize-phenotyping

Issue 濞夈劌鍞介敍?
https://github.com/D2RS-2026spring/projects/issues/145

## 4. 閺佺増宓侀弶銉︾爱

閺佺増宓侀梿鍡楁倳缁夊府绱癙heno4D

鐎规ɑ鏌熼弫鐗堝祦妞ょ敻娼伴敍?
https://www.ipb.uni-bonn.de/data/pheno4d/

閺佺増宓佹稉瀣祰閸︽澘娼冮敍?
https://www.ipb.uni-bonn.de/html/projects/Pheno4D/Pheno4D.zip

閻㈠彉绨崢鐔奉潗閺佺増宓侀弬鍥︽鏉堝啫銇囬敍灞炬拱娴犳挸绨辨稉宥勭瑐娴?`Pheno4D.zip` 閸滃矁袙閸樺鎮楅惃鍕斧婵鍋ｆ禍鎴炴瀮娴犺翰鈧倸顦查悳鎷屸偓鍛存付鐟曚浇鍤滅悰灞肩瑓鏉炶棄甯慨瀣殶閹诡噯绱濋獮璺虹殺閸忚埖鏂佺純顔兼躬 `data/raw/` 閻╊喖缍嶆稉瀣ㄢ偓?
## 5. 妞ゅ湱娲扮紒鎾寸€?
```text
data/raw/          閸樼喎顫愰弫鐗堝祦閿涘奔绗夋稉濠佺炊閸?GitHub
data/processed/    妫板嫬顦╅悶鍡楁倵閻ㄥ嫮绮ㄩ弸婊嗐€?scripts/           閺佺増宓佺拠璇插絿閵嗕焦绔诲ú妤€鎷伴崚鍡樼€介懘姘拱
results/figures/   鏉堟挸鍤崶鍓у
results/tables/    鏉堟挸鍤悰銊︾壐
report/            閸忔湹绮幎銉ユ啞閺夋劖鏋?docs/              Quarto 濞撳弶鐓嬮崥搴ｆ畱缂冩垿銆?index.qmd          Quarto 娑撶粯濮ら崨?_quarto.yml        Quarto 妞ゅ湱娲伴柊宥囩枂
README.md          妞ゅ湱娲扮拠瀛樻娑撳骸顦查悳鐗堫劄妤?```

## 6. 婢跺秶骞囬悳顖氼暔

閺堫剟銆嶉惄顔诲瘜鐟曚椒濞囬悽顭掔窗

- R 4.6.0
- Quarto 1.9.38
- R 閸栧拑绱発nitr閵嗕购markdown

閸忔湹鑵戦敍瀹峴cripts/01_extract_maize01_height.R` 閸欘亙濞囬悽?base R閿涘苯褰叉禒銉ュ櫤鐏忔垵顦查悳鎵箚婢у啩绶风挧鏍モ偓?
## 7. 鐎瑰本鏆ｆ径宥囧箛濮濄儵顎?
### 7.1 閸忓娈曟禒鎾崇氨

```bash
git clone https://github.com/D2RS-2026spring/pheno4d-maize-phenotyping.git
cd pheno4d-maize-phenotyping
```

### 7.2 娑撳娴囬崢鐔奉潗閺佺増宓?
娴?Pheno4D 鐎规ɑ鏌熸い鐢告桨娑撳娴?`Pheno4D.zip`閿涘苯鑻熼弨鎯у弳閿?
```text
data/raw/Pheno4D.zip
```

### 7.3 鐟欙絽甯?Maize01 閺佺増宓?
閺堫剟銆嶉惄顔煎涧娴ｈ法鏁?`Pheno4D/Maize01/` 閺傚洣娆㈡径骞库偓鍌氬讲娴犮儲澧滈崝銊ㄐ掗崢瀣剁礉娑旂喎褰叉禒銉ユ躬 PowerShell 娑擃叀绻嶇悰灞间簰娑撳鎳℃禒銈忕窗

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

鐟欙絽甯囬崥搴＄安瀵版鍩岄敍?
```text
data/raw/Pheno4D/Maize01/M01_0313_a.txt
data/raw/Pheno4D/Maize01/M01_0314.txt
...
data/raw/Pheno4D/Maize01/M01_0325_a.txt
```

### 7.4 鏉╂劘顢戦弫鐗堝祦閸掑棙鐎介懘姘拱

```bash
Rscript scripts/01_extract_maize01_height.R
```

鏉╂劘顢戦崥搴濈窗閻㈢喐鍨氶敍?
```text
data/processed/maize01_height.csv
results/figures/maize01_height_trend.png
```

### 7.5 濞撳弶鐓?Quarto 閹躲儱鎲?
婵″倹鐏?R 娑擃厼鐨婚張顏勭暔鐟?`knitr` 閸?`rmarkdown`閿涘苯鍘涙潻鎰攽閿?
```bash
Rscript -e "install.packages(c('knitr', 'rmarkdown'), repos='https://cloud.r-project.org')"
```

閻掕泛鎮楀〒鍙夌厠閹躲儱鎲￠敍?
```bash
quarto render
```

濞撳弶鐓嬬€瑰本鍨氶崥搴礉閸欘垯浜掗幍鎾崇磻閿?
```text
docs/index.html
```

娑旂喎褰叉禒銉問闂傤喖婀痪鎸庡Г閸涘绱?
https://d2rs-2026spring.github.io/pheno4d-maize-phenotyping/

## 8. 瑜版挸澧犳径宥囧箛缂佹挻鐏?
閺堫剟銆嶉惄顔肩唨娴?`Maize01` 閻?12 娑擃亝妞傞惄鍝ュ仯娴滄垶鏋冩禒璁圭礉閹绘劕褰囩粭顑跨瑏閸?`z` 閸ф劖鐖ｉ敍灞借嫙娴ｈ法鏁ら敍?
```text
height = max(z) - min(z)
```

鐠侊紕鐣婚悳澶岃儗閺嶎亪鐝潻鎴滄妧閸婄鈧?
缂佹挻鐏夌悰銊︽閿涘畭Maize01` 閻ㄥ嫮鍋ｆ禍鎴︾彯鎼达附鈧缍嬮梾蹇斿閹诲繑妫╅張鐔奉杻閸旂姾鈧奔绗傞崡鍥风礉鐠囧瓨妲戞稉澶屾樊閻愰€涚隘閼宠棄顧勯崣宥嗘Ё閻滃鑳岄崡鏇熺墯閸︺劏绻涚紒顓☆潎濞村婀￠崘鍛畱閻㈢喖鏆遍崣妯哄閵?
## 9. 鐏忓繒绮嶉幋鎰喅娑撳氦纭€閻?
| 閹存劕鎲?| 娑撴槒顩︾拹锛勫盀 |
|---|---|
| 閹存劕鎲? | 妞ゅ湱娲版禒鎾崇氨閸掓稑缂撻妴涓sue 濞夈劌鍞介妴渚€銆嶉惄顔剧波閺嬪嫭鎯屽?|
| 閹存劕鎲? | 閺佺増宓佹稉瀣祰娑撳孩鏆ｉ悶?|
| 閹存劕鎲? | 閻愰€涚隘妫板嫬顦╅悶鍡曠瑢閺嶎亪鐝拋锛勭暬 |
| 閹存劕鎲? | Quarto 閹躲儱鎲￠妴涓稥ADME 娑撳骸顦查悳鐗堢ゴ鐠?|

閸氬海鐢荤亸鍡樼壌閹诡喖鐤勯梽鍛毈缂佸嫭鍨氶崨妯烘嫲 GitHub 閹绘劒姘︾拋鏉跨秿閺囧瓨鏌婇妴