# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
# enable color support of ls and also add handy aliases
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias vim='/usr/bin/vim'
alias vi='/usr/bin/vim'

# LOCALE environment set
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

PATH=${PATH/:\/usr\/local\/bin}
export PATH="/usr/local/bin:$PATH"

# JAVA Path
if [ -x /usr/libexec/java_home ]; then
    export JAVA_HOME="$(/usr/libexec/java_home -v 17)"
fi
if [ ! -z "$JAVA_HOME" ]; then
    export CLASSPATH=.:$JAVA_HOME/lib
    export PATH=$PATH:$JAVA_HOME/bin
fi

# Maven Path
if [ -d "$HOME/Software/maven" ]; then
    export MAVEN_HOME="$HOME/Software/maven"
    export PATH=$PATH:$MAVEN_HOME/bin
    #MAVEN_OPTS="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8787"
fi

# MySQL Path
if [ ! -z mysql ] && [ -d /usr/local/mysql/bin ]; then
    export PATH=$PATH:/usr/local/mysql/bin
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

# zsh_completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

export email=cpf624@126.com
export home_page=http://jhat.pw
export project=/Users/jhat/Documents/Projects
export GOPATH=/Users/jhat/Documents/Projects/go
export PATH=$PATH:/usr/local/opt/go/libexec/bin

export PATH=$PATH:$GOPATH/bin

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

#export http_proxy=socks5://127.0.0.1:10081
#export https_proxy=socks5://127.0.0.1:10081

# hide the “user@hostname”
prompt_context(){}

# If you need to have node@10 first in your PATH run:
# export PATH="/usr/local/opt/node@10/bin:$PATH"

# For compilers to find node@10 you may need to set:
# export LDFLAGS="-L/usr/local/opt/node@10/lib"
# export CPPFLAGS="-I/usr/local/opt/node@10/include"
