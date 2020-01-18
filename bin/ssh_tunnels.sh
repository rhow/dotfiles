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
autossh ${USER}@bastion.us-central1-b.datadoors-qual -L 0.0.0.0:25601:10.128.0.225:5601 -N -f
autossh ${USER}@bastion.us-central1-b.datadoors-qual -L 0.0.0.0:25602:10.128.0.224:5601 -N -f

# Single Kibana ES
autossh ${USER}@bastion.us-central1-b.datadoors-qual -L 0.0.0.0:39200:10.128.0.159:9200 -N -f
autossh ${USER}@bastion.us-central1-b.datadoors-qual -L 0.0.0.0:35601:10.128.0.226:5601 -N -f

# streaming-inventory-server
autossh ${USER}@bastion.us-central1-c.ads-ftc-noc -L 0.0.0.0:8383:10.128.0.251:80 -N -f

# QUAL DB
autossh ${USER}@bastion.us-central1-b.datadoors-qual -L 0.0.0.0:5477:35.194.26.54:5432 -N -f

# QUAL DDWebServerUtil loadbalancer
autossh ${USER}@bastion.us-central1-b.datadoors-qual -L 0.0.0.0:8731:10.128.0.210:8731 -N -f

# QUAL DataDoors Streaming Server
autossh ${USER}@bastion.us-central1-b.datadoors-qual -L 0.0.0.0:6677:10.128.0.185:80 -N -f

# DataDoors Streaming Authoring API
autossh ${USER}@bastion.us-central1-b.datadoors-qual -L 0.0.0.0:8866:10.128.0.255:8080 -N -f
autossh ${USER}@bastion.us-central1-c.ads-ftc-noc -L 0.0.0.0:8865:10.128.0.255:8080 -N -f

# Tensorboard
autossh rhow@rhow-ml-vm.us-central1-a.ag-qual-frontend-adsftc -L 0.0.0.0:26006:10.128.0.19:6006 -N -f

# OneAtlas
autossh rhow@admin-lin.europe-west1-b.one-atlas-live-1334 -L 0.0.0.0:44444:192.168.10.3:5432 -N -f   	# database-2
autossh rhow@admin-lin.europe-west1-b.one-atlas-dc-dev -L 0.0.0.0:44445:192.168.10.2:5432 -N -f 		# database-1

