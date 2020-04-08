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

for c in ${COUNTY}; do
    sw_length=$(cat "${c}4326.json" | jq '.features[].properties.SW_LENG' | awk '{s+=$1} END {printf "%.0f", s}')
    length=$(cat "${c}4326.json" | jq '.features[].properties.LENGTH' | awk '{s+=$1} END {printf "%.0f", s}')
    echo "${c}, ${sw_length}, ${length}"
done
