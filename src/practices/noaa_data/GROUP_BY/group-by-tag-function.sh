#!/bin/bash

curl -G http://localhost:8086/query?pretty=true \
	--data-urlencode "db=NOAA_water_database" \
	--data-urlencode "q=SELECT MAX(\"water_level\") FROM \"h2o_feet\" GROUP BY \"location\" LIMIT 3"
