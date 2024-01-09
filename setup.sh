#!/bin/bash

sudo apt-get update
sudo apt-get install -y --no-install-recommends \
     vim \
     git \
     zsh \
     tmux \
     htop \
     iftop \
     iotop \
     aptitude \
     strace

KERNEL=`uname`
if [ ${KERNEL} == 'Linux' ] ; then
	LN=ln
	MKDIR='mkdir -p'
	RMDIR='rm -r'
        CPDIR='cp -r'
	MVDIR='mv'
	RM=rm
	CP=cp
        MV=mv
else
	echo "UNSUPPORTED KERNEL: ${KERNEL}"
	exit 0
fi

PWD=`pwd`

# vim
${MV} -f ~/.vimrc ~/.vimrc.backup || ${LN} -sT ${PWD}/vim/.vimrc ~/.vimrc
${MVDIR} -f ~/.vim ~/.vim.backup || ${LN} -sT ${PWD}/vim/.vim ~/.vim

# ssh
${MKDIR} ~/.ssh
${MV} -f ~/.ssh/config ~/.ssh/.config.backup || ${LN} -sT ${PWD}/ssh/config ~/.ssh/config
${MVDIR} -f ~/.ssh/config.d ~/.ssh/.config.d.backup || ${LN} -sT ${PWD}/ssh/config.d ~/.ssh/config.d

# git
${LN} -sT ${PWD}/git/.gitconfig ~/.gitconfig
