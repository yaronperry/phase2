# 🚀 Flask App on Kubernetes

This project demonstrates how to deploy a Dockerized Flask web application to a Kubernetes cluster using:

- ✅ Deployments & ReplicaSets
- ✅ Services
- ✅ ConfigMaps & Secrets
- ✅ Horizontal Pod Autoscaling (HPA)
- ✅ CronJobs
- ✅ Liveness & Readiness Probes

Getting started:

1. Clone the repositery
	git clone https://github.com/yaronperry/phase2.git
	cd phase1

2. Start Minikube:
    minikube start

3. Apply Kubernetes Manifests:
  3.1 Create ConfigMap:
    kubectl apply -f configmap.yaml
  
  3.2 Create Secret:
    kubectl apply -f secret.yaml

  3.3 Deploy the Flask App:
    kubectl apply -f deployment.yaml

  3.4 Expose the App via NodePort:
    kubectl apply -f service.yaml

  3.5 Apply Horizontal Pod Autoscaler
    kubectl apply -f hpa.yaml
    kubectl get hpa

  3.6 Add cronjob:
    kubectl apply -f cronjob.yaml
    kubectl get cronjobs

4. Verify app is runnig:
  4.1 Get the Minikube IP:
    minikube ip

  You’ll see something like:
    http://192.168.105.4

   go to browser and open:
      Go to your browser and open:
 
        http://192.168.105.4:30080/

      you should see "Hello World"  

