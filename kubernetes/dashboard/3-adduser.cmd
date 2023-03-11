kubectl apply -f files/1-kubernetes-adminuser.yaml

kubectl apply -f files/2-kubernetes-adminuser.yaml

kubectl -n kubernetes-dashboard create token admin-user > files/admin-user-token.txt

notepad files\admin-user-token.txt
del files\admin-user-token.txt

@echo copy admin token to your browser window
@pause