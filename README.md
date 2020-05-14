# Kubernetes deployment
## Project
This repo was created as part of our VOP-project **Kubernetes**.
In this repo we listed all applications we deployed on our kubernetes cluster and what use they have.

Interested in setting up a bare-metal kubernetes setup? Checkout https://github.com/vop-2020-kubernetes/k8s-ansible-ugent.

## CI/ CD
 - **Tekton & Argocd GitOps setup**: https://github.com/vop-2020-kubernetes/boutique-ci-cd
 - **Gitlab example pipeline**: https://github.com/vop-2020-kubernetes/gitlab-example

## Deployments
| application | description                                     |
|-------------|-------------------------------------------------|
| flannel     | at the time of setting up default goto CNI implementation (February 2020) (seems to be [removed from k8s install page](https://github.com/kubernetes/website/commit/f73647531dcdade2327412253a5f839781d57897/) so you might now consider using calico instead)
| simplelb    |	[custom loadbalancing solution](https://github.com/amurant/simplelb) exposes services of the type "LoadBalancer" on the master nodes
| rook        |	add [distributed ceph storage](https://rook.io/docs/rook/v1.3/ceph-quickstart.html) to kubernetes, also providing a persistent volume controller
| gitlab      |	add an in-cluster [gitlab deployement](https://docs.gitlab.com/charts/), allowing us to have a git repository with ci/cd functionality
| istio       | istio setup using [istio-operator](https://istio.io/docs/setup/install/standalone-operator/#install), is used as default ingress and port 80 and 443 are bound to the istio-ingressgateway, it also provides us with prometheus, grafana, kiali and other usefull monitoring tools, quite a few application deployments had to be adapted to use the istio ingress solution (hopefully the istio way of defining ingress will be mainstreamed and included in [Ingress V2](https://www.youtube.com/watch?v=Ne9UJL6irXY))
| dashboard   |	kubernetes default [dashboard](https://kubernetes.io/docs/tasks/access-application-cluster/web-ui-dashboard/)
| sonobuoy    |	[conformance testing](https://github.com/vmware-tanzu/sonobuoy) your kubernetes cluster
| bookinfo    |	[bookinfo](https://github.com/istio/istio/tree/master/samples/bookinfo) sample application
| knative     |	[knative](https://knative.dev/docs/install/) serverless applications
| elastic     |	[elk stack helm charts](https://github.com/elastic/helm-charts) allows us to have centralised logging, also has some monitoring features (metric-beats)
| harbor      |	docker repository alternative to gitlab buildin docker repository, **note: [this helm chart](https://goharbor.io/docs/1.10/install-config/harbor-ha-helm/) seems to be very poorly made**, it has default disk sizes that are way too small and handling volume-claims also seems quite devious
| ingress     | alternative ingress solutions like [traefik](https://github.com/containous/traefik) andd [nginx](https://github.com/kubernetes/ingress-nginx)
| tekton pipelines | The Tekton Pipelines project provides k8s-style resources for declaring CI/CD-style pipelines.
| tekton triggers | Using tektoncd/triggers in conjunction with tektoncd/pipeline enables you to easily create full-fledged CI/CD systems where the execution is defined entirely through Kubernetes resources.
| argocd      | Argo CD is a declarative, GitOps continuous delivery tool for Kubernetes.

## Tools
| application | description                                     |
|-------------|-------------------------------------------------|
| fortio      |	[this tool](https://github.com/fortio/fortio), allows us to test http latencies, was used to test our ha-setup

## Dashboards & control panels
 - `kubectl -n kubernetes-dashboard port-forward service/kubernetes-dashboard 443:443` (kubernetes dashboard)
 - `https://gitlab.c0.kube8.ga/` (gitlab instance)
 - `istioctl dashboard grafana` (prometheus dashboard)
 - `istioctl dashboard kiali` (kiali dashboard)
 - `kubectl -n elk-stack port-forward service/kibana-kibana 5601:5601` (kibana control-panel)
 - `kubectl -n tekton-pipelines port-forward service/tekton-dashboard 9097:9097` (tekton dashboard)
 - `kubectl -n argocd port-forward service/argocd-server 443:443` (argocd dashboard)
