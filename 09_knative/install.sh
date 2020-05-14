# https://github.com/knative/serving-operator/releases/download/v0.13.0/serving-operator.yaml
# https://github.com/knative/eventing-operator/releases/download/v0.13.0/eventing-operator.yaml

kubectl create ns knative-operator
kubectl apply -n knative-operator -f serving-operator.yaml
kubectl apply -n knative-operator -f eventing-operator.yaml

