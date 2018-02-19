#!/bin/bash

curl -G http://localhost:8086/query?pretty=true \
	--data-urlencode "db=NOAA_water_database" \
	--data-urlencode "q=SELECT * FROM \"h2o_feet\" WHERE \"water_level\" >= 7.205 LIMIT 3"
