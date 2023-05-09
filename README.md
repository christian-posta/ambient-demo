istioctl install -d manifests/ --set hub=$HUB --set tag=$TAG -y --set profile=ambient

kubectl label namespace default istio.io/dataplane-mode=ambient

kubectl label namespace default istio.io/dataplane-mode-

istioctl uninstall -y --purge && kubectl delete ns istio-system



kubectl debug -it -n istio-system ztunnel-fw4l6 --image=nicolaka/netshoot --image-pull-policy=Always 

termshark -i eth0


