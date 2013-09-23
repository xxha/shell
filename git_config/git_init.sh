#!/bin/sh

#init git management, and configure git enviroments
git init
git add .
sync
git config --global color.status auto
git config --global color.diff true
git config --global core.editor vim
git config --global user.name "Lindell Xu"
git config --global user.email lxu@vetronicsltd.com.cn
git config --global core.paper "less -N"
git config --global color.diff true
git config --global alias.co checkout
git commit -a -s
