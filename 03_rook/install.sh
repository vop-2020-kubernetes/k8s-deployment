# https://rook.io/docs/rook/v1.2/ceph-quickstart.html

git clone --single-branch --branch release-1.3 https://github.com/rook/rook.git
cd rook/cluster/examples/kubernetes/ceph

kubectl create -f common.yaml
kubectl create -f operator.yaml
cd ../../../../../
kubectl create -f cluster.yaml

# kubectl -n rook-ceph get cephcluster

