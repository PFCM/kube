#! /bin/bash
set -e

# Sets up the rook operator and a rook-ceph deployment
echo "---------deploying rook common-----------"
# kubectl apply -f https://github.com/rook/rook/raw/release-1.0/cluster/examples/kubernetes/ceph/common.yaml
kubectl apply -f common.yaml
echo "------deploying rook-ceph operator-------"
kubectl apply -f https://github.com/rook/rook/raw/release-1.0/cluster/examples/kubernetes/ceph/operator.yaml --wait
echo "---------deploying ceph cluster----------"
kubectl apply -f "ceph.yaml"
