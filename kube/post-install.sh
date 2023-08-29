#!/bin/bash

mkdir ~/.kube

# 给 kubelet 赋予 api-server 的访问权限
cp /etc/kubernetes/admin.conf ~/.kube/
chmod a+r ~/.kube/admin.conf
export KUBECONFIG=~/.kube/admin.conf

# 添加 kubectl 命令自动补全
apt-get install -y bash-completion
kubectl completion bash | sudo tee /etc/bash_completion.d/kubectl > /dev/null

# 检查当前用户是否有访问权限
kubectl get pods