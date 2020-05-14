for CLUSTER_NAME in cluster0 cluster1
do

echo "$CLUSTER_NAME"

kubectl config use-context "$CLUSTER_NAME"

kubectl create namespace istio-system
kubectl create secret generic cacerts -n istio-system \
    --from-file="certs/$CLUSTER_NAME/ca-cert.pem" \
    --from-file="certs/$CLUSTER_NAME/ca-key.pem" \
    --from-file="certs/$CLUSTER_NAME/root-cert.pem" \
    --from-file="certs/$CLUSTER_NAME/cert-chain.pem"
done

