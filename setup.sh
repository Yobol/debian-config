#!/bin/bash

sudo apt-get update &&
     apt-get install -y --no-install-recommends \
     vim \
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
${RM} ~/.vimrc && ${LN} -sT ${PWD}/.vimrc ~/.vimrc
${RMDIR} ~/.vim &&  ${LN} -sT ${PWD}/.vim ~/.vim
