@rem kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml
kubectl apply -f files/kubernetes-dashboard-recommended.yaml

@rem echo do not forget to start: kubectl proxy
start kubectl proxy

@rem open Kubernetes Dashboard in web browser
start http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/