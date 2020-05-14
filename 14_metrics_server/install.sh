# https://github.com/kubernetes-sigs/metrics-server

# wget https://github.com/kubernetes-sigs/metrics-server/releases/download/v0.3.6/components.yaml
# add:
# --kubelet-insecure-tls
# --kubelet-preferred-address-types=InternalIP

kubectl apply -f components.yaml

