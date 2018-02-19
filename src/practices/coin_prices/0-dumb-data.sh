#!/bin/bash

influx -import -path=COINS_data.txt -precision=s

curl -# -v -i -X POST \
	-d "q=SHOW DATABASES" \
	http://localhost:8086/query?pretty=true

curl -# -v -i -X POST \
	-d "q=SHOW measurements" \
	--data-urlencode "db=CoinPrices" \
	http://localhost:8086/query?pretty=true
