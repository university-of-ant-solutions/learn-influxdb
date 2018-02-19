#!/bin/bash

curl -G http://localhost:8086/query?pretty=true \
	--data-urlencode "db=NOAA_water_database" \
	--data-urlencode "q=SELECT * FROM \"h2o_feet\" WHERE \"time\" = '2015-08-18 00:12:00' LIMIT 3"
