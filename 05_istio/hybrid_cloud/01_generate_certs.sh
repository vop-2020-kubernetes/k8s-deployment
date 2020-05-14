#git clone https://github.com/istio/istio.git
#cp -r istio/samples/certs ./

cd certs
make cluster0-certs
make external-cluster-certs
