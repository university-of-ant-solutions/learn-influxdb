#!/bin/bash
ROOT_DIR=`dirname "$(perl -e 'use Cwd "abs_path"; print abs_path(shift)' $0)"`

. "$ROOT_DIR/../var.sh"
source "$ROOT_DIR/../utils.sh"

if ! fileExists 'NOAA_data.txt'; then
  curl https://s3.amazonaws.com/noaa.water-database/NOAA_data.txt > NOAA_data.txt
fi

influx -import -path=NOAA_data.txt -precision=s

curl -# -v -i -X POST \
	-d "q=SHOW DATABASES" \
	http://localhost:8086/query?pretty=true

curl -# -v -i -X POST \
	-d "q=SHOW measurements" \
	--data-urlencode "db=NOAA_water_database" \
	http://localhost:8086/query?pretty=true
