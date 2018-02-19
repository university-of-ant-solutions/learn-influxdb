#!/bin/bash

curl -G http://localhost:8086/query?pretty=true \
	--data-urlencode "q=SELECT * FROM \"NOAA_watnondatabase\".\"autogen\".\"h2o_feet\" LIMIT 3"
