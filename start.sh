#!/bin/bash

service memcached start
service nginx start
service postgresql start
service puppet start
service rabbitmq-server start
service redis-server start
service supervisor start

tail -f /dev/null
