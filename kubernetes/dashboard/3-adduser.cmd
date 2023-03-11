kubectl apply -f files/1-kubernetes-adminuser.yaml
kubectl apply -f files/2-kubernetes-adminuser.yaml
kubectl -n kubernetes-dashboard create token admin-user > admin-user-token.txt
start notepad admin-user-token.txt
@rem echo copy admin token to your browser window
@rem echo save token as password
pause