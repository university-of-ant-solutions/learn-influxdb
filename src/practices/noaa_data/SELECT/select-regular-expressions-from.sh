#!/bin/bash

curl -G http://localhost:8086/query?pretty=true \
	--data-urlencode "db=NOAA_water_database" \
	--data-urlencode "q=SELECT MEAN(\"degrees\") AS MeanDegrees FROM /temperature/ LIMIT 3"
