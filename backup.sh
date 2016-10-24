#!/bin/bash
# Copying vimrc
cp ~/.vimrc ./
cp ~/.bashrc ./
cp ~/.tmux.conf ./
cp ~/.tmux.conf.local ./
git add .vimrc
git add .bashrc
git add .tmux.conf
git add .tmux.conf.local
git add backup.sh
git add restore.sh
