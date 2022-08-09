##Notes: Feb 2022, removed years of baggage that doesnt apply anymore.. basically reset.. 


export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="random"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fasd)



## User configuration ##

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/christopher/.bin/Utilities:/home/christopher/.bin/Utilities:/home/christopher/jstock"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

#exists on macpro2022 so I'm not getting rid of it but I think old thing
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"


##Real User Stuff##

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


function cs(){
cd "$@" && ls
}

function mcs(){
mv "$1" "$2"
cs "$2"
}

function ms(){
mv "$1" "$2" 
cs "$2"
}

alias vpn='/opt/cisco/anyconnect/bin/vpn'
alias vpnui='/opt/cisco/anyconnect/bin/vpn'

# revisiting using virtualenvwrapper #21.10.04
#  #using conda setup on mac instead
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3 #new 22.04
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
export VIRTUALENVWRAPPER_PYTHON="$(command \which python3)"
#export VIRTUALENVWRAPPER_VIRTUALENV="$(command \which python3)"
#export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source /usr/local/bin/virtualenvwrapper.sh
#default='tensorflow-r1.1' <or whatever>

#Just an example with anaconda instead of virtualenv# (not preferred)
# . /Users/christophersnyder/anaconda2/etc/profile.d/conda.sh 
#To put conda on path  "conda activate"
##To use environment: "conda activate tensorflow-2.0beta"


#Misc User Defined
export STEP=/Users/christophersnyder/Documents/UTMBy4/STEP
export UTMB=/Users/christophersnyder/Documents/UTMBy4
UL=~/Projects/Utilities
source $UL/source_me  #does:# PATH=$PATH:$UL # source $UL/useful_functions # etc

#Mactex install
PATH=/usr/local/texlive/2018/bin/x86_64-darwin:$PATH #Still active
# "which latex" --> "/usr/local/texlive/2018/bin/x86_64-darwin/latex"

#Storage
GD='/Volumes/GoogleDrive/My Drive/Pathology (GoogleDrive)'
export CONFIG=~/Projects/config

# DROP = ~/Dropbox



#### OLD TENSORFLOW CONFIG #####
####- obviously all the paths are broken #####
#Tensorflow
#PATH=$PATH:/usr/local/cuda/bin
#LD_LIBRARY_PATH=/usr/local/cuda/lib64
#default="tensorflow-r1.1"
#&#tf1.11 req cuda 9. tf 1.4-cd8 reques cuda 8 #probably should put this in the VE
#&#default="tensorflow-source1.4-cd8.0-cn7.0.1"
#&#export PATH=$PATH:/usr/local/cuda-8.0/bin
#&#export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64:$LD_LIBRARY_PATH
#&#export CUDA_HOME=/usr/local/cuda
#default="tensorflow-1.11"##ERR doesn't work with 9.2. needs build from source
#export PATH=$PATH:/usr/local/cuda-9.2/bin
#export LD_LIBRARY_PATH=/usr/local/cuda-9.2/lib64:$LD_LIBRARY_PATH
#export CUDA_HOME=/usr/local/cuda
#### 

##Misc Broken but was uncommented##
#workon $default
#export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64





#| ## KEPT FOR THE PROMOTION OF NOSTALGIA  ## |#
#|
#| #function rose(){
#| #	cd "/home/christopher/.wine/drive_c/Program Files (x86)/Rosetta Stone/Rosetta Stone Version 3"
#| ##	wine "/home/christopher/.wine/drive_c/Program Files (x86)/Rosetta Stone/Rosetta Stone Version 3/RosettaStoneVersion3.exe"
#| #	wine RosettaStoneVersion3.exe
#| #}
#|
#|
#|
#|
#| #function sshtunnel(){
#| #port="$1"
#| #ssh -fNL $port':stampede.tacc.utexas.edu:'$port csnyder@stampede.tacc.utexas.edu
#| #}
#| #try vinagre localhost::14294

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/christophersnyder/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/christophersnyder/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/christophersnyder/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/christophersnyder/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<



# 22.06.06
# I think I'm moving to Anaconda python ecosys
#

export ICLOUD='/Users/christophersnyder/Library/Mobile Documents/com~apple~CloudDocs'
#export ICLOUD="/Users/christophersnyder/Library/Mobile\ Documents/com\~apple\~CloudDocs"
#export BOX  = /users/christophersnyder/library/cloudstorage/box-box/
export DATA=$HOME/DATA/

#try again without spaces in folder names :/
#export pthrp="$ICLOUD/Code\ in\ Cloud/pthrp"
#export pthrp='$ICLOUD/Code\ in\ Cloud/pthrp' 
#

export pthrp="/Users/christophersnyder/Library/Mobile\ Documents/com\~apple\~CloudDocs/Code\ in\ Cloud/pthrp"
export PROJ="/Users/christophersnyder/Library/Mobile\ Documents/com\~apple\~CloudDocs/Code\ in\ Cloud/pthrp"
export RIS="compute1-client-2.ris.wustl.edu"
export HIT="/storage1/fs1/zaydmanm/Active/nspies/HIT"

