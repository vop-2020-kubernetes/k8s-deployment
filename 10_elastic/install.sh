#/bin/bash

helm repo add elastic https://helm.elastic.co

kubectl create ns elk-stack

helm upgrade --namespace elk-stack --install elasticsearch elastic/elasticsearch -f values_elasticsearch.yaml

helm upgrade --namespace elk-stack --install kibana elastic/kibana

# helm upgrade --namespace elk-stack --install logstash elastic/logstash -f values_logstash.yaml

helm upgrade --namespace elk-stack --install filebeat elastic/filebeat

helm upgrade --namespace elk-stack --install metricbeat elastic/metricbeat -f values_metricbeat.yaml

