
====================================kubernetes local===========================================================

kubectl run --generator=run-pod/v1 nginx --image=nginx --dry-run -o yaml

kubectl run --generator=deployment/v1beta1 nginx --image=nginx --dry-run --replicas=4 -o yaml

kubectl run --generator=deployment/v1beta1 nginx --image=nginx --dry-run --replicas=4 -o yaml > nginx-deployment.yaml

kubectl create deployment --image=nginx nginx --dry-run -o yaml > nginx-deployment.yaml

kubectl expose pod redis --port=6379 --name redis-service --dry-run -o yaml

kubectl expose pod nginx --port=80 --name nginx-service --dry-run -o yaml

kubectl create service nodeport nginx --tcp=80:80 --node-port=30080 --dry-run -o yaml

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
 

kubectl logs [pod name]

kubectl logs [pod-name] -c [container-name]

kubectl logs -p [pod-name]

//streaming the logs
kubectl logs -f [pod-name]

kubectl describe pod [pod-name]

kubectl exec [pod-nam] -it sh


 =================================================================================================================


eyJhbGciOiJSUzI1NiIsImtpZCI6IiJ9.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJrdWJlLXN5c3RlbSIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VjcmV0Lm5hbWUiOiJhdHRhY2hkZXRhY2gtY29udHJvbGxlci10b2tlbi12N2dkbSIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50Lm5hbWUiOiJhdHRhY2hkZXRhY2gtY29udHJvbGxlciIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50LnVpZCI6IjcyNzk3NWFjLWYwYTQtNGU2ZC05NGZlLTNiOWFjODhiZTUwMiIsInN1YiI6InN5c3RlbTpzZXJ2aWNlYWNjb3VudDprdWJlLXN5c3RlbTphdHRhY2hkZXRhY2gtY29udHJvbGxlciJ9.ehrAwbrgVKL2J6OZpmiTGlW8URyHdl7InUjG4V8xgDEIH71eGbp_kJZY3Y32HTAR9gCmJDKpLJkn1txViRewAy-Jse_8AkKWlNduTHM-eP6zxSEt7XWiSb2KWpv7esUsL8YLsl1C6UmqBtT1N7zsyTEAwUcMdYRT-wYUm2pMFtoUxVYh7ImJhR11p7nScxnGZlTsAZFgIttr3NbT3UblbxhJOl-wyDCLxPgyvZBgdp4vj4iTLZlh-LHyaEGwXTdJ_vknfhQTrvstJgg7IHeMAtiM7OqR6VS_7s83ftqX--c_36KSIKxfdI2qR_cdrQCg7vIrS6UXmIaeiosejn5g-g
