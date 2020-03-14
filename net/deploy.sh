#! /bin/bash

set -e
echo "~~~~~~~~adding metallb~~~~~~~~~~~"
kubectl apply -f https://raw.githubusercontent.com/google/metallb/v0.8.1/manifests/metallb.yaml --wait
echo "~~~~~~~~~configuring~~~~~~~~~~~~~"
kubectl apply -f metal-config.yaml
echo "~~~~~~adding nginx-ingress~~~~~~~"
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/mandatory.yaml --wait
kubectl apply -f nginx-service.yaml
