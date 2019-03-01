#! /bin/bash

set +e

# Kill all running ssh sessions
ps -C autossh -o pid= | xargs kill -9 && ps -C ssh -o pid= | xargs kill -9


##### ads-ftc-noc

# Mugg
autossh ${USER}@bastion.us-central1-c.ads-ftc-noc -L 0.0.0.0:8484:10.128.0.200:80 -N -f

# DB
autossh ${USER}@bastion.us-central1-c.ads-ftc-noc -L 0.0.0.0:5466:35.188.105.191:5432 -N -f

# mapserver
autossh ${USER}@bastion.us-central1-c.ads-ftc-noc -L 0.0.0.0:8363:10.128.0.230:80 -N -f

# Elasticsearch - streaming-utilization

autossh ${USER}@bastion.us-central1-c.ads-ftc-noc -L 0.0.0.0:19201:10.128.0.151:9200 -N -f

# Cluster: Streaming-Utilization: ElasticSearch & Kibana
autossh ${USER}@bastion.us-central1-c.ads-ftc-noc -L 0.0.0.0:19200:10.128.0.150:9200 -N -f
autossh ${USER}@bastion.us-central1-c.ads-ftc-noc -L 0.0.0.0:15600:10.128.0.225:5601 -N -f

# Elasticsearch
autossh ${USER}@bastion.us-central1-b.datadoors-qual -L 0.0.0.0:29201:10.128.0.151:9200 -N -f
autossh ${USER}@bastion.us-central1-b.datadoors-qual -L 0.0.0.0:25601:10.128.0.224:5601 -N -f

# streaming-inventory-server
autossh ${USER}@bastion.us-central1-c.ads-ftc-noc -L 0.0.0.0:8383:10.128.0.251:80 -N -f

# QUAL DB
autossh ${USER}@bastion.us-central1-b.datadoors-qual -L 0.0.0.0:5477:35.194.26.54:5432 -N -f
