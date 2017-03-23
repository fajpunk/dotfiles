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

if [ -f $HOME/.tmux.conf ]; then
  mv $HOME/.tmux.conf $BACKUPDIR/.tmux.conf.$RANDOM
elif [ -h $HOME/.tmux.conf ]; then
  rm $HOME/.tmux.conf
fi
ln -s $(readlink -f .tmux.conf) $HOME/.tmux.conf

if [ -d $HOME/.config/nvim ]; then
  mv $HOME/.config/nvim $BACKUPDIR/nvim
elif [ -h $HOME/.config/nvim ]; then
  rm $HOME/.config/nvim
fi
ln -s $(readlink -f nvim) $HOME/.config/nvim
