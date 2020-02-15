#!/bin/bash

/app/usr/filebeat/filebeat-7.6.0-linux-x86_64/filebeat -c /app/usr/filebeat/filebeat-7.6.0-linux-x86_64/filebeat.yml &

redis-server /redis/redis-5.0.7/redis.conf