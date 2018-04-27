# Rails App with Kubernetes and Fluentd Sumo Collector

Just a simple toy app showing how easy it is to use fluentd sumologic with an http collector

## Usage
1. Use minikube!
```sh
minikube start
```
1. Build the docker image
```sh
# use your minikube
eval $(minikube docker-env)
# build the image
docker build . -t paulos-kube-test:0.0.1
```

If you change the image tag, you should also change the image tag in the `./infrastructure/kube/deployment.yaml`

1. Create your own sumologic collector with an http endpoint. And change `./infrastructure/kube/fluentd.yaml`.
```yaml
# line 78
env:
- name: COLLECTOR_URL
  value: <YOUR ENDPOINT>
```

1. Create the kubernetes files
```sh
kubectl create -f ./infrastructure/kube
```
