#Create a namespace
kubectl create namespace n1

kubectl run nginx --image=nginx --namespace n1

#Get all Namespaces
kubectl get namespaces

#Get all api-resource that can be in a namespace
kubectl api-resources --namespaced=true
kubectl api-resources --namespaced=false

#Describe namespaces
kubectl describe namespaces
kubectl describe namespaces n1
kubectl describe namespaces kube-system

kubectl get pods --all-namespaces

kubectl get all --all-namespaces

kubectl get pod --all-namespaces


#Get data from a specific namespace
kubectl get pods --namespace n1
kubectl get pods -n n1
kubectl get all --namespace=n1

#delete all the pods in a namespace
kubectl delete pods --all --namespace n1

#delete the namespace
kubectl delete namespace n1