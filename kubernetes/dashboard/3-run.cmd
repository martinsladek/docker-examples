kubectl apply -f 1-kubernetes-adminuser.yaml
kubectl apply -f 2-kubernetes-adminuser.yaml
kubectl -n kubernetes-dashboard create token admin-user
