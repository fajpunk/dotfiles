# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# hub
export GITHUB_HOST=gh.leapfrogonline.net
if [ -f ~/.local/completion/hub.bash_completion.sh ]; then
    . ~/.local/completion/hub.bash_completion.sh
fi
eval "$(hub alias -s)"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
export PAGER=less
export PATH=/home/dfuchs/bin:$PATH
export PATH=/home/dfuchs/.local/bin:$PATH
export PAGER=less
export SYSTEMD_PAGER=$PAGER

export VISUAL=nvim
export EDITOR="$VISUAL"

# Bloated git garbage
# Set config variables first
GIT_PROMPT_ONLY_IN_REPO=1

# GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status

# GIT_PROMPT_SHOW_UPSTREAM=1 # uncomment to show upstream tracking branch
# GIT_PROMPT_SHOW_UNTRACKED_FILES=all # can be no, normal or all; determines counting of untracked files

# GIT_PROMPT_STATUS_COMMAND=gitstatus_pre-1.7.10.sh # uncomment to support Git older than 1.7.10

# GIT_PROMPT_START=...    # uncomment for custom prompt start sequence
# GIT_PROMPT_END=...      # uncomment for custom prompt end sequence

# as last entry source the gitprompt script
# GIT_PROMPT_THEME=Custom # use custom theme specified in file GIT_PROMPT_THEME_FILE (default ~/.git-prompt-colors.sh)
# GIT_PROMPT_THEME_FILE=~/.git-prompt-colors.sh
# GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme
source ~/src/bash-git-prompt/gitprompt.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f /home/dfuchs/Downloads/google-cloud-sdk/path.bash.inc ]; then
    source '/home/dfuchs/Downloads/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /home/dfuchs/Downloads/google-cloud-sdk/completion.bash.inc ]; then
  source '/home/dfuchs/Downloads/google-cloud-sdk/completion.bash.inc'
fi

export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Stack
eval "$(stack --bash-completion-script stack)"

# go
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/src/go
export PATH=$PATH:$(go env GOPATH)/bin

# vim
alias vim=nvim

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# added by travis gem
[ -f /home/dfuchs/.travis/travis.sh ] && source /home/dfuchs/.travis/travis.sh

# pgsql aliases
alias stage_replica_prod="PGOPTIONS=--search_path=stage,ftp_accounts,hashi psql -h db8.production.ause2 production"
alias stage_prod="PGOPTIONS=--search_path=stage,ftp_accounts,hashi psql -h sch1-db08.leapfrogonline.net production"
alias stage_qa="PGOPTIONS=--search_path=stage,ftp_accounts,hashi psql -h sch1-db7.leapfrogonline.net qa"
alias stage_dev="PGOPTIONS=--search_path=stage,ftp_accounts,hashi psql -h sch1-db7.leapfrogonline.net dev"

complete -C /home/dfuchs/bin/vault vault
