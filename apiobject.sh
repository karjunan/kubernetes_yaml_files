
#Get the information about the current context 
kubectl config get-contexts

#Change the context
kubectl config use-context kubernetes-admin@kubernetes

#get cluster info
kubectl cluster-info


#Get a list of api-resources at the cluster
kubectl api-resources 

#Explain the pods
kubectl explain pods 

#Creating a pod
kubectl apply -f pod.yaml

#Detail of the pod specifiction
kubectl explain pod.spec
kubectl explain pod.spec.containers


#Delete a pod
kubectl delete pod hello-world
