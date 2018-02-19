#!/bin/bash
. "var.sh"

curl -# -v -i -X POST \
	-d "q=DROP DATABASE $DB_NAME" \
	http://localhost:8086/query 
