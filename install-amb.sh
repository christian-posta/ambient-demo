# install ambient
istioctl install  -y --set profile=ambient --set meshConfig.accessLogFile=/dev/stdout

# install addons?
kubectl apply -f /home/solo/dev/hack/ambient/distro/istio-1.18.0-alpha.0/samples/addons

# install gateway CRDs
kubectl get crd gateways.gateway.networking.k8s.io &> /dev/null ||   { kubectl kustomize "github.com/kubernetes-sigs/gateway-api/config/crd?ref=v0.6.1" | kubectl apply -f -; }

# port-forward kiali
istioctl dashboard kiali