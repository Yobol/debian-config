#!/bin/bash

curl -s https://packagecloud.io/install/repositories/eugeny/tabby/script.deb.sh | sudo bash

PWD=`pwd`

mv -f ~/.config/tabby/config.yaml ~/.config/tabby/config.yaml.backup && ln -sT ${PWD}/config.yaml ~/.config/tabby/config.yaml
