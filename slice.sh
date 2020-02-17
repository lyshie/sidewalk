#!/usr/bin/env sh

read -r -d '' COUNTY << LINE
台北市
新北市
高雄市
台中市
桃園市
台南市
新竹縣
雲林縣
嘉義市
彰化縣
南投縣
嘉義縣
宜蘭縣
新竹市
澎湖縣
基隆市
屏東縣
苗栗縣
花蓮縣
台東縣
連江縣
金門縣
LINE

filename="$1"

# EPSG:3826 => EPSG:4326
# ogr2ogr -f "GeoJSON" -s_srs EPSG:3826 -t_srs EPSG:4326 output.json source.shp

for c in ${COUNTY}; do
	echo "[${c}]"
	(cat << EOF
{                                                                                 
"type": "FeatureCollection",                                                       
"name": "Sidewalk_Cpami_20191230",                                                 
"crs": { "type": "name",  "properties": { "name": "urn:ogc:def:crs:EPSG::3826" } }, 
"features": [                                                                     
EOF
	 grep -P "\"COUNTY_NA\":\s*\"${c}\"" "${filename}" | sed '$ s/.$//';
	 echo "] }") > "${c}.json"
     ogr2ogr -f "GeoJSON" -s_srs EPSG:3826 -t_srs EPSG:4326 "${c}4326.json" "${c}.json"
done
