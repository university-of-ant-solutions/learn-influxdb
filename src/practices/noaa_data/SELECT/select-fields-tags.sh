#!/bin/bash

curl -G http://localhost:8086/query?pretty=true \
	--data-urlencode "db=NOAA_water_database" \
	--data-urlencode "q=SELECT \"water_level\"::field,\"location\"::tag FROM \"h2o_feet\" LIMIT 3"