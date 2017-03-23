#!/bin/bash

set -e

BACKUPDIR=$HOME/.dotfile-backups

if [ ! -d $BACKUPDIR ]; then
  mkdir $BACKUPDIR
fi

if [ -f $HOME/.tmux.conf ]; then
  mv $HOME/.tmux.conf $BACKUPDIR/.tmux.conf.$RANDOM
elif [ -h $HOME/.tmux.conf ]; then
  rm $HOME/.tmux.conf
fi
ln -s $(readlink -f .tmux.conf) $HOME/.tmux.conf

if [ -f $HOME/.bashrc ]; then
  mv $HOME/.bashrc $BACKUPDIR/.bashrc.$RANDOM
elif [ -h $HOME/.bashrc ]; then
  rm $HOME/.bashrc
fi
ln -s $(readlink -f .bashrc) $HOME/.bashrc
