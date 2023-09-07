#!/bin/sh

# Initialize the Kubernetes cluster
sudo kubeadm init

# Set up the Kubernetes configuration for the regular user
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Alternatively, if you are the root user, you can run:
# export KUBECONFIG=/etc/kubernetes/admin.conf

# Install the Weave Net CNI plugin
kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml

# Create a token for joining worker nodes to the cluster
sudo kubeadm token create --print-join-command