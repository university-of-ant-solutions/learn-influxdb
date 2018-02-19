#!/bin/bash
. "var.sh"

curl -G http://localhost:8086/query?pretty=true \
	--data-urlencode "db=$DB_NAME" \
	--data-urlencode "q=SELECT \"PriceUSD\",\"MarketCapUSD\",\"PriceBTC\",\"Name\",(PriceUSD+PriceBTC AS Price) FROM \"$TABLE_NAME\" WHERE \"Name\"='Litecoin'"
