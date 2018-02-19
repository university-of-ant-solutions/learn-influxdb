#!/bin/bash

curl -G 'http://localhost:8086/query?pretty=true' \
	--data-urlencode "db=mydb" \
	--data-urlencode "q=SELECT \"value\" FROM \"cpu_load_short\" WHERE \"region\"='us-west';SELECT count(\"value\") FROM \"cpu_load_short\" WHERE \"region\"='us-west'"
