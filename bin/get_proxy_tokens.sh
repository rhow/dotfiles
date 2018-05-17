#! /bin/bash

echo ""

echo "datadoors-qual"
kubectl config view -o jsonpath='{.users[?(@.name == "gke_datadoors-qual_us-central1-c_datadoors-qual-primary")].user.auth-provider.config.access-token}'

echo ""
echo ""

echo "ads-ftc-noc:ads-ftc-primary"
kubectl config view -o jsonpath='{.users[?(@.name == "gke_ads-ftc-noc_us-central1-c_ads-ftc-primary")].user.auth-provider.config.access-token}'

echo ""
echo ""

echo "ads-ftc-noc:utilization"
kubectl config view -o jsonpath='{.users[?(@.name == "gke_ads-ftc-noc_us-central1-a_utilization")].user.auth-provider.config.access-token}'

echo ""
echo ""
