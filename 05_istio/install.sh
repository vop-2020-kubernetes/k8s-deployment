kubectl create -f ssl/cert-manager.yaml
kubectl create -f ssl/certificate.yaml

kubectl create -f istio/
kubectl create namespace bookinfo-istio
kubectl label namespace bookinfo-istio istio-injection=enabled

# can't split up bookinfo and gitlab gateways
# see https://istio.io/docs/ops/common-problems/network-issues/#404-errors-occur-when-multiple-gateways-configured-with-same-tls-certificate
kubectl create -f bookinfo/ --namespace=bookinfo-istio
kubectl create -f gitlab/

