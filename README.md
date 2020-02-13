# ingress-canary
 please install minikube 
go for each folder and build Dockerfile 
update image name in deployment files go.yml and java.yml

# Deploy the ingress-nginx controller
$ kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/nginx-0.22.0/deploy/mandatory.yaml

# Expose the ingress-nginx
$ kubectl expose deployment \
    -n ingress-nginx nginx-ingress-controller \
    --port 80 \
    --type LoadBalancer \
    --name ingress-nginx
    
    # Deploy java and go instances
$ kubectl apply -f ./go.yml -f ./java.yml


# Create a canary ingress in order to split traffic: 70% to go, 30% to java
$ kubectl apply -f  ./ingress-canary.yml

