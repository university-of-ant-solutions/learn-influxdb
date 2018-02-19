#!/bin/bash
. "var.sh"

curl -# -v -i -X POST \
	-d "q=CREATE DATABASE $DB_NAME" \
	http://localhost:8086/query 
