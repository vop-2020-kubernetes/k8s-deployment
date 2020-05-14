curl -L https://istio.io/downloadIstio | sh -
cd istio-1.5.2
export PATH=$PWD/bin:$PATH

istioctl operator init

cd ..

kubectl create -f operator.yaml


# kubectl logs -f -n istio-operator $(kubectl get pods -n istio-operator -lname=istio-operator -o jsonpath='{.items[0].metadata.name}')

