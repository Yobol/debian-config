#!/bin/bash

sudo apt-get update &&
     apt-get install -y --no-install-recommends \
     vim \
     git \
     zsh

KERNEL=`uname`
if [ ${KERNEL} == 'Linux' ] ; then
	LN=ln
	MKDIR=mkdir
	RMDIR='rm -r'
        CPDIR='cp -r'
	CP=cp
	RM=rm
else
	echo "UNSUPPORTED KERNEL: ${KERNEL}"
	exit 0
fi

PWD=`pwd`

# vim
${RM} -f ~/.vimrc && ${LN} -sT ${PWD}/vim/.vimrc ~/.vimrc
${RMDIR} -f ~/.vim && ${LN} -sT ${PWD}/vim/.vim ~/.vim

# git
${RM} -f ~/.gitconfig && ${LN} -sT ${PWD}/git/.gitconfig ~/.gitconfig
