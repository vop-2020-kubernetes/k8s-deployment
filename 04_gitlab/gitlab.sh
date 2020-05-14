helm repo add gitlab https://charts.gitlab.io/
helm repo update

kubectl create namespace gitlab
kubectl create secret generic gitlab-initial-root-password --from-literal=password="admin123" -n gitlab

helm upgrade --namespace gitlab \
  --install gitlab gitlab/gitlab \
  --set certmanager.install=false \
  --set gitlab-runner.install=false \
  --set gitlab.unicorn.ingress.enabled=false \
  --set prometheus.install=false \
  --set global.ingress.configureCertmanager=false \
  --set global.ingress.enabled=false \
  --set global.hosts.domain=c0.kube8.ga \
  --set global.initialRootPassword.secret=gitlab-initial-root-password \
  --set nginx-ingress.enabled=false \
  --set gitlab.gitaly.persistence.storageClass=rook-ceph-block \
  --set postgresql.persistence.storageClass=rook-ceph-block \
  --set minio.persistence.storageClass=rook-ceph-block \
  --set redis.master.persistence.storageClass=rook-ceph-block \
  --set redis.slave.persistence.storageClass=rook-ceph-block
