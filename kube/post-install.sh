#!/bin/bash

mkdir ~/.kube

cp /etc/kubernetes/admin.conf ~/.kube/
chmod a+r ~/.kube/admin.conf

# 检查当前用户是否有访问权限
kubectl get pods