
---
description: key concepts
keywords: database, time series, key, concepts
title: key concepts
---

## What is InfluxDB

InfluxDB is designed to work with time-series data. SQL databases can handle time-series but weren’t created strictly for that purpose. In short, InfluxDB is made to store a large volume of time-series data and perform real-time analysis on those data, quickly.

Those same data look like this in InfluxDB:

```
name: foodships
tags: park_id=1, planet=Earth
time			               #_foodships
----			               ------------
2015-04-16T12:00:00Z	 0
2015-04-16T12:00:01Z	 3
2015-04-16T12:00:02Z	 15
2015-04-16T12:00:03Z	 15

name: foodships
tags: park_id=2, planet=Saturn
time			               #_foodships
----			               ------------
2015-04-16T12:00:00Z	 5
2015-04-16T12:00:01Z	 9
2015-04-16T12:00:02Z	 10
2015-04-16T12:00:03Z	 14

name: foodships
tags: park_id=3, planet=Jupiter
time			               #_foodships
----			               ------------
2015-04-16T12:00:00Z	 20
2015-04-16T12:00:01Z	 21
2015-04-16T12:00:02Z	 21
2015-04-16T12:00:03Z	 20

name: foodships
tags: park_id=4, planet=Saturn
time			               #_foodships
----			               ------------
2015-04-16T12:00:00Z	 5
2015-04-16T12:00:01Z	 5
2015-04-16T12:00:02Z	 6
2015-04-16T12:00:03Z	 5
```

Referencing the example above, in general:

An InfluxDB measurement (foodships) is similar to an SQL database table.

InfluxDB tags ( park_id and planet) are like indexed columns in an SQL database.

InfluxDB fields (#_foodships) are like unindexed columns in an SQL database.

InfluxDB points (for example, 2015-04-16T12:00:00Z 5) are similar to SQL rows.

## Resources

- [concepts](https://docs.influxdata.com/influxdb/v1.4/concepts/key_concepts/)