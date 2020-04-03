#Watch the PODs 
kubectl get events --watch

#Create a pod 
kubectl apply -f pod.yaml

#Start a Deployment with 1 replica
kubectl apply -f deployment.yaml

#Scale a deployment to 2 replicas
kubectl scale deployment hello-world --replicas=2

kubectl get pods -o wide