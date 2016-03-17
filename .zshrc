# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dfrisk"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh
export VIRTUAL_ENV_DISABLE_PROMPT=1

# Env specific
export EDITOR="vim"
export MY_EDITOR="vim"
#
# Shortcuts
alias ez="$MY_EDITOR $HOME/.zshrc"
alias et="$MY_EDITOR $HOME/.tmux.conf"
alias ev="$MY_EDITOR $HOME/.vimrc"
alias ipython="ipython --colors linux"

# My own bin dir
PATH="/Users/dfuchs/bin:$PATH"
export PATH

export PATH="/usr/local/sbin:/usr/local/bin:$PATH"

# Node
#export PATH="/usr/local/share/npm/bin:$PATH"

# Postgres
#export PATH="/Applications/Postgres93.app/Contents/MacOS/bin:$PATH"

# Python
PATH="/usr/local/share/python:$PATH"
export PATH
#
# MySQL
export PATH="/usr/local/mysql/bin:$PATH"

# TeX
export PATH="/usr/local/texlive/2012/bin/x86_64-darwin:$PATH"

# Pip
# export PIP_REQUIRE_VIRTUALENV=true
# export PIP_RESPECT_VIRTUALENV=true

# Emacs
# alias emacs="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -nc"
alias EMACS="TERM=xterm-256color /Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias emacs="TERM=xterm-256color emacsclient -nw"
# alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# git
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

# lilypond
export PATH="/Applications/LilyPond.app/Contents/Resources/bin:$PATH"


# haskell
export PATH=~/.cabal/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# tmux
bindkey '^R' history-incremental-search-backward

alias dp='find . -name "*.pyc" -exec rm -rf {} \;'

# Packer
export PATH="/usr/local/bin/packer:$PATH"

# Nodenv
eval "$(nodenv init -)"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
