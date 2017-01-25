#!/bin/bash
# Tuan Dao's rc files backup script with github
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
git commit
