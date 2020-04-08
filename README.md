# 台灣各縣市人行道統計資料

```
Geospatial Data Abstraction Library (GDAL/OGR))
$ sudo dnf install gdal

https://data.moi.gov.tw/MoiOD/Data/DataDetail.aspx?oid=11D38E3D-F980-40BF-B714-4E0DB8AA1252
grep -oP '"COUNTY_NA":\s*".+?"' Sidewalk_201912.GeoJSON | sort | uniq -c | sort -nr > count.txt
```

## 道路、人行道資料來源
  - [臺北市工務統計資料查詢系統](http://pwbstat.taipei.gov.tw/pxweb2007p/dialog/statfile9.asp)
  - [道路長度面積 - 交通部統計查詢網 - 中華民國交通部](http://stat.motc.gov.tw/mocdb/stmain.jsp?sys=210&funid=b340101&type=1)
