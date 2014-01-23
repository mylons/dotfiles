# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mylons"

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
# DISABLE_CORRECTION="true"

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

# Customize to your needs...
export PATH=$PATH:/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/bin

# misc paths
export EC2_HOME=/usr/local/Cellar/ec2-api-tools/1.6.7
export AWS_IAM_HOME="/usr/local/Cellar/ec2-ami-tools/1.4.0.9/"
export AWS_CREDENTIAL_FILE=$HOME/.aws-credentials-master

# java paths
export JAVA_HOME=$(/usr/libexec/java_home)


set -o vi
eval "$(rbenv init -)"

setopt append_history no_inc_append_history no_share_history

bindkey -v
bindkey '^R' history-incremental-search-backward


setopt interactivecomments # pound sign in interactive prompt
# tab completion
autoload -U compinit
compinit
# tab completion from both ends
setopt completeinword

# *chef* #
# opscode chef aliases
alias knife='nocorrect knife'
# chef env
export KITCHEN='/Users/mylons/dev/git/chef/kitchen'
export PATH=$PATH:$KITCHEN/bin
export BERKSHELF_PATH=$KITCHEN/.berkshelf
# my random short cuts
alias k='cd ~/dev/git/chef/kitchen'
# end chef #

# SSH
export SSH_KEY_ID=`whoami`


alias myssh='ssh -i /Users/mylons/.ssh/mylons.pem'

# chef shortcuts
alias vp='vagrant provision'
alias vd='vagrant destroy'
alias vu='vagrant up'
alias vs='vagrant ssh'
alias vr='vagrant reload'
alias vh='vagrant halt'

# git shortcuts
alias gs='git status'

function math() {
    python -c "print $1 $2 $3"
}

# aws
export AWS_ACCESS_KEY_ID="AKIAJHAREFXBAH6SBLPA"
export AWS_SECRET_ACCESS_KEY="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"

# whirr settings
export WHIRR_PROVIDER=aws-ec2
export WHIRR_IDENTITY=$AWS_ACCESS_KEY_ID
export WHIRR_CREDENTIAL=$AWS_SECRET_ACCESS_KEY

# hadoop settings
export HADOOP_INSTALL=/opt/hadoop
export HADOOP_COMMON_HOME=$HADOOP_INSTALL
export HADOOP_MAPRED_HOME=$HADOOP_INSTALL
export SQOOP_HOME=/Users/mylons/dev/sqoop/sqoop-1.4.3.bin__hadoop-1.0.0

# scala & sbt settings
export SBT_HOME=/opt/sbt
export SCALA_HOME=/opt/scala
export SBT_OPTS="-Xmx2048m -Xms512m -XX:MaxPermSize=512m"
SCALA_PATHS=$SBT_HOME/bin:$SCALA_HOME/bin
alias s='cd ~/dev/git/scala'

# scala/java framework settings
export PATH=$PATH:/opt/play

# path exports
export PATH=$PATH:$HOME/bin:$SCALA_PATHS:$HADOOP_INSTALL/bin:$HADOOP_INSTALL:/sbin

# editor settings
export EDITOR=vim

# general aliases
alias dev='cd ~/dev/'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
