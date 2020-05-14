host=bookinfo.c0.kube8.ga
target=193.190.127.245

#ip=$(dig +short $target | head -n1)
#read -p "Press [Enter] key to start request to $ip as $host ..."

#curl -I --resolve $host:443:$ip https://$host/productpage

fortio load -H "Host: $host" -a -c 100 -t 300s -qps 0 http://$target:80/productpage

