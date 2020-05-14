# https://github.com/fortio/fortio

curl -L https://github.com/fortio/fortio/releases/download/v1.3.1/fortio-linux_x64-1.3.1.tgz \
 | sudo tar -C / -xvzpf -

fortio load -a -c 100 -t 30s -qps 0 http://bookinfo.c0.kube8.ga:80/productpage
fortio load -a -c 100 -t 30s -qps 0 http://bookinfo.c0.kube8.ga:8080/productpage
fortio report
