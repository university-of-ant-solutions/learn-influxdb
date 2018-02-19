#!/bin/bash
. "var.sh"

curl -# -v -i -X POST \
	-d "q=SHOW DATABASES" \
	http://localhost:8086/query?pretty=true
