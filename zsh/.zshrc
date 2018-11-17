# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git archlinux ssh-agent)

# User configuration

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=100000
setopt extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/filepath/to/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias py="python2.7"
alias ls='ls --color=auto'
alias ll='ls -lah'
alias lt='ls -haltr'
alias rstudio='rstudio-bin'

#Aliases for self written scripts
alias splitright='/path/to/.scripts/splitscreeninfowork.sh'
alias splitleft='/path/to/.scripts/splitscreenleft.sh'

#Export script folder
export PATH=$PATH:~/.scripts


PS1='[\u@\h \W]\$ '

#Matlab
export PATH=$PATH:/usr/local/MATLAB/R2013a/bin
alias matlabconsole='matlab -nodesktop -nosplash'

#Intel Compiler
export PATH=$PATH:/opt/intel/bin

#Editor
export EDITOR="vim" 

#Android
export PATH=$PATH:/opt/android-sdk/tools/
export PATH=$PATH:/opt/android-sdk/platform-tools/

#Java
#export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/bin/java
#export JAVA_HOME=/usr/bin/java
#export JAVA_HOME=/usr/bin/java
#export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/jre

#Haskell
export PATH=$PATH:~/.cabal/bin
export PATH=$PATH:~/.cabal-sandbox/bin

#Haskell-Stack
export PATH=$PATH:$HOME/.stack/snapshots/x86_64-linux/lts-5.3/7.10.3/bin
export PATH=$PATH:$HOME/.local/bin

#haskell.do
export PATH=$PATH:$HOME/Documents/haskell-do


#some message
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=setting'


#Go
export GOPATH=~/go


#Haskell 
export STACK_INSTALL_PATH=$STACK_INSTALL_PATH:$HOME/.stack/snapshots/x86_64-linux/lts-5.3/7.10.3/bin

man() {
    env \
    LESS_TERMCAP_mb=$'\e[1;31m' \
    LESS_TERMCAP_md=$'\e[1;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[1;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[1;32m' \
    man "$@"
}



#set default webbrowser
export BROWSER=firefox
#export BROWSER=vivaldi-stable

#vimide
alias vimhardcore="vim -u ~/.vim/configs/hardcoreide.vim"
alias vimide="vim -u      ~/.vim/configs/ide.vim"


bindkey -v

# Terminology
export ECORE_IMF_MODULE="xim"
export XMODIFIERS="@im=none"


export XDG_CONFIG_HOME=/home/maxi
