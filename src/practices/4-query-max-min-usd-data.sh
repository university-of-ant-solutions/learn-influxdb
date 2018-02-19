#!/bin/bash
. "var.sh"

echo "max PriceUSD value:"
curl -G http://localhost:8086/query?pretty=true \
	--data-urlencode "db=$DB_NAME" \
	--data-urlencode "q=SELECT MAX(\"PriceUSD\"),\"Name\" FROM \"$TABLE_NAME\" WHERE \"Name\"='Litecoin'"

echo "min PriceUSD value:"
curl -G http://localhost:8086/query?pretty=true \
	--data-urlencode "db=$DB_NAME" \
	--data-urlencode "q=SELECT MIN(\"PriceUSD\"),\"Name\" FROM \"$TABLE_NAME\" WHERE \"Name\"='Litecoin'"
