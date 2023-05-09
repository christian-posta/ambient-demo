kubectl label namespace default istio.io/dataplane-mode-
kubectl delete authorizationpolicy,virtualservice --all -n default
kubectl delete gateway helloworld

istioctl uninstall -y --purge && kubectl delete ns istio-system
