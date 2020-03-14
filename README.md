
====================================kubernetes local===========================================================

 kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0-beta8/aio/deploy/recommended.yaml  
 
 kubectl describe secret -n kube-system
 
 copy the token from service-account-token -> This will be in the top.
 
 kubectl proxy
 
 http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/
 
 kubectl get all	
 
 kubectl run nginx --image=nginx:alpine
 
 kubectl port-forward nginx-74d5899f46-mnmmf 8080:80
 
 kubectl delete deployment nginx
 
 kubectl delete pod [podname]
 
kubectl get pods --watch
  
kubectl get pods
   
kubectl create -f nginx.pod.yml --save-config   -> creates an actual pod which the annotations

kubectl create -f nginx.pod.yml --dry-run --validate=true ->> To test dryrun
   
kubectl get pod my-nginx -o yaml  --> see the description of what is written in deployment

kubectl get pod my-nginx -o yaml

kubectl exec my-nginx -it sh 

kubectl describe pod [pod name]

kubectl get deployments

kubectl get deployments --show-labels

kubectl get deployments -l app=nginx

kubectl delete deployment [ deployment name]

kubectl scale deployment [deployment name ] --replicas=5

kubectl scale -f file.deployment.yaml --replicas=5

kubectl delete -f file.deploymen.yaml

kubectl describe pod docker-volume  

kubectl create -f file-Name.configmap.yml

kubectl create configmap [somename] --from-file=[path to file]

kubectl create configmap [somename] --from-env-file=[path to file]

kubectl create configmap [cm-name]  --from-literal=apiURL=http://get.com 
									--from-lieral=otherkey=setSomething
									
kubectl get cm [cm-name]

kubectl create secret generic my-secret --from-literal=dbname=http://db.com --from-literal=dbpass=abcd

kubectl create secret generic my-secret 
              --from-file=ssh-private-key=~/.ssh/id_rsa
              --from-file=ssh-public-key=~/.ssh/id_rsa_pub
              
kubectl create secret tls tls-secret --cert=path/to/tls.cert --key=path/to/tls.key
 



 =================================================================================================================
