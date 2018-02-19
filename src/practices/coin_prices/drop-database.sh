#!/bin/bash

curl -# -v -i -X POST \
	-d "q=DROP DATABASE CoinPrices" \
	http://localhost:8086/query 
