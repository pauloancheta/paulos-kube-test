# Rails App with Kubernetes and Fluentd Sumo Collector

Just a simple toy app showing how easy it is to use fluentd sumologic with an http collector

## Usage
1. Use minikube!
```sh
minikube start
```
2. Build the docker image
```sh
# use your minikube
eval $(minikube docker-env)
# build the image
docker build . -t paulos-kube-test:0.0.1
```

If you change the image tag, you should also change the image tag in the `./infrastructure/kube/deployment.yaml`

3. Create your own sumologic collector with an http endpoint. And change `./infrastructure/kube/fluentd.yaml`.
```yaml
# line 78
env:
- name: COLLECTOR_URL
  value: <YOUR ENDPOINT>
```

4. Create the kubernetes files
```sh
kubectl create -f ./infrastructure/kube
```

### Example Output
<img width="1267" alt="screen shot 2018-04-27 at 2 53 00 pm" src="https://user-images.githubusercontent.com/9355943/39452548-edd8b21c-4d15-11e8-8117-366d7f166b7e.png">
