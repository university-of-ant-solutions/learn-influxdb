#!/bin/bash
. "var.sh"

curl -# -v -i -X POST \
	http://localhost:8086/write?db=$DB_NAME \
	--data-binary @stock_data.txt
