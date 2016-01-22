#!/bin/bash
docker-compose -f cluster.yml stop
docker-compose -f cluster.yml rm
docker-compose -f cluster.yml up -d
docker exec elasticsearch-master-01 plugin install mobz/elasticsearch-head
docker exec kibana-01 kibana plugin --install elastic/sense
docker restart kibana-01