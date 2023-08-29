#!/bin/bash

gpasswd -a ${USER} docker && newgrp docker

# 检查当前用户是否有访问权限
docker ps