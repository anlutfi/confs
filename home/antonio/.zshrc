# Path to your oh-my-zsh installation.
export ZSH="/home/antonio/.oh-my-zsh"

DEFAULT_USER=antonio

ZSH_THEME="agnoster"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

### RUBY STUFF mainly for jekyll
export GEM_HOME="/home/antonio/dev/ruby/gems"
export PATH="$GEM_HOME/bin:$PATH"

### DEV TOOLS
DEV_DIR="/home/antonio/dev"
OPENCV_IDIR="$DEV_DIR/opencv4_1_1/include/opencv4"
OPENCV_LDIR="$DEV_DIR/opencv4_1_1/lib"


#add DEV_DIR to default include search directories for gcc and g++
export CPATH="$DEV_DIR/:$CPATH"
export CPATH="$OPENCV_IDIR/:$CPATH"
export CPATH="$OPENCV_LDIR/:$CPATH"
export LD_LIBRARY_PATH="$OPENCV_LDIR/:$LD_LIBRARY_PATH"


#python virtual envs aliases
PYTHON_VENV_DIR="$DEV_DIR""pyvenvs/"

function newvenv(){
    virtualenv --no-site-packages "$PYTHON_VENV_DIR""$1"
}

function newvenvpy3(){
    virtualenv --no-site-packages --python=python3.6 "$PYTHON_VENV_DIR""$1"
}

alias venvs="ls $PYTHON_VENV_DIR"

function runvenv () {
	source "$PYTHON_VENV_DIR""$1"/bin/activate
}

alias stopvenv="deactivate"

function dfltpy(){
	startvenv default
	ipython
}

#lint python code ignoring useless error-reporting - MUST BE IN A VENV WITH FLAKE8 INSTALLED
alias lint="python /home/antonio/Dropbox/projects/simplescripts/lint.py -p "

### END DEV TOOLS


### VPN TOOLS

#list vpns of a type (TCP vs UDP) from a location
function vpns () {
    ls -la "/etc/openvpn/ovpn_""$1" | grep "$2"
}

alias vpnst="vpns tcp "
alias vpnsu="vpns udp "

#connect to vpn server of a type, TCP or UDP
alias vpndnst="/home/antonio/Dropbox/projects/simplescripts/vpndns tcp "
alias vpndnsu="/home/antonio/Dropbox/projects/simplescripts/vpndns udp "
### END VPN TOOLS

### ZSH TOOLS

#open this file with nano and save a copy in dropbox
function zshconf () {
    gedit ~/.zshrc
    cp ~/.zshrc ~/Dropbox/projects/simplescripts
}

#source this file
alias re-source="source ~/.zshrc"

### END ZSH TOOLS

### MISC TOOLS
alias projects="cd ~/Dropbox/projects"











# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#PYVENVS="/home/antonio/dev/pyvenvs/"



# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder



# User configuration

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


