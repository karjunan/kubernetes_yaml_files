
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

#Explain api resources
kubectl api-resources

#Explain deployment object
kubectl explain deployment

#Explain deployment object higher version
kubectl explain deployment --api-version apps/v1beta2


#Explain deployment object which is a stable version
kubectl explain deployment --api-version apps/v1


#Explain Api versions
kubectl api-versions

#Instruction from kubectl to deploy a yaml file
kubectl apply -f deployment.yaml

kubectl get deployment hello-world -o yaml

kubectl delete deployment hello-world


#Add Verbosity to the output
kubectl get pod hello-world -v 9

kubectl get pod hello-world -v 8 


#Authenticate using our local server
kubectl proxy & curl http://localhost:8001/api/v1/namespaces/default/pods/hello-world 


#Keep a watch on the pods
kubectl get pods --watch -v 6

#Access logs
kubectl get logs hello-world
kubectl get logs hello-world -v 6

