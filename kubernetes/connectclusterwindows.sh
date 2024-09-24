
# Kubernetes

### Conectar Windows na Dashboard do Kubernetes usando Apache Cloudstack:

Acessar arquivo dashboard-serviceaccount.yml pelo powershell:

apiVersion: v1
kind: ServiceAccount
metadata:
  name: admin-user
  namespace: kubernetes-dashboard
---
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRoleBinding
metadata:
  name: admin-user
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: cluster-admin
subjects:
- kind: ServiceAccount
  name: admin-user
  namespace: kubernetes-dashboard
  



commands


kubectl —kubeconfig kube.conf create -f dashboard-serviceaccount.yml

kubectl —kubeconfig kube.conf -n kubernetes-dashboard create token admin-user  (gerar token)

kubectl —kubeconfig kube.conf -n kubernetes-dashboard port-foward service/kubernetes-dashboard 8443:443

https://localhost:8443/](https://localhost:8443/) (colar o token e acessar)






