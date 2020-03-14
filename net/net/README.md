### Network configuration

Run the deploy script.

This adds [MetalLB](https://metallb.universe.tf) to do load balancing/make
services available in a more useful way than nodeports.
It then adds [nginx-ingress](https://github.com/kubernetes/ingress-nginx)
to allow us to use ingress controllers for exposing http services.
