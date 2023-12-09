#!/bin/bash

mkdir ~/.kube

sudo cp /etc/kubernetes/admin.conf ~/.kube/config
sudo chown $(id -u):$(id -g) ~/.kube/config
unset KUBECONFIG # disable env

sudo apt-get install -y bash-completion
kubectl completion bash | sudo tee /etc/bash_completion.d/kubectl > /dev/null

# test: you have permissions to access kube-apiserver
kubectl get pods
