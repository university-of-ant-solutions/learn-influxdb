#!/bin/bash

curl -G http://localhost:8086/query?pretty=true \
	--data-urlencode "db=CoinPrices" \
	--data-urlencode "q=SELECT LAST(\"PriceUSD\") FROM \"Prices\" WHERE \"Symbol\" = 'LTC' AND \"time\" > '2018-02-04' AND \"time\" < '2018-02-05' GROUP BY time(1h) fill(0)"
