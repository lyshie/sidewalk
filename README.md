# 台灣各縣市人行道統計資料

```
Geospatial Data Abstraction Library (GDAL/OGR))
$ sudo dnf install gdal

https://data.moi.gov.tw/MoiOD/Data/DataDetail.aspx?oid=11D38E3D-F980-40BF-B714-4E0DB8AA1252
grep -oP '"COUNTY_NA":\s*".+?"' Sidewalk_201912.GeoJSON | sort | uniq -c | sort -nr > count.txt
```
