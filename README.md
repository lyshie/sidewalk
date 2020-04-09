# 台灣各縣市人行道統計資料

```
Geospatial Data Abstraction Library (GDAL/OGR))
$ sudo dnf install gdal

https://data.moi.gov.tw/MoiOD/Data/DataDetail.aspx?oid=11D38E3D-F980-40BF-B714-4E0DB8AA1252
grep -oP '"COUNTY_NA":\s*".+?"' Sidewalk_201912.GeoJSON | sort | uniq -c | sort -nr > count.txt
```

## 道路、人行道資料來源
  - [內政部營建署-市區道路人行安全地理資訊系統](http://sidewalk.cpami.gov.tw/sidewalk/)
  - [人行道 | 政府資料開放平臺](https://data.gov.tw/dataset/58791)
  - [道路長度面積 - 交通部統計查詢網 - 中華民國交通部](http://stat.motc.gov.tw/mocdb/stmain.jsp?sys=210&funid=b340101&type=1)
  - [臺北市工務統計資料查詢系統](http://pwbstat.taipei.gov.tw/pxweb2007p/dialog/statfile9.asp)
  - [桃園市人行道管理](https://data.gov.tw/dataset/26069)
  - [桃園市人行道管理](https://data.tycg.gov.tw/opendata/datalist/datasetMeta?oid=1de35418-b949-4ace-89a2-cb92714be3eb)
  - [新竹市人行道管理](https://data.gov.tw/dataset/86540)
  - [新竹市人行道管理](http://opendata.hccg.gov.tw/dataset/publicwork-20180621-141313-4445)
  - [新竹市人行道資料清查表](http://opendata.hccg.gov.tw/dataset/publicwork-20180621-141313-4445/resource/67bd8373-c93d-408c-9776-93809587153b)
  - [雲林縣人行道清查資料](https://data.gov.tw/dataset/40469)
  - [雲林縣人行道清查資料](https://public.yunlin.gov.tw/News_Content.aspx?n=760&s=256340)
