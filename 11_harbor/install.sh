helm repo add harbor https://helm.goharbor.io

kubectl create ns harbor
helm -n harbor uninstall harbor
helm -n harbor install harbor harbor/harbor -f values.yaml

