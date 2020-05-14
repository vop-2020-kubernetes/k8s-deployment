for CLUSTER_NAME in cluster0 cluster1
do

echo "$CLUSTER_NAME"

kubectl config use-context "$CLUSTER_NAME"

kubectl apply -f operator_merged.yaml
done

