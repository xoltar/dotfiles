# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bureau"

setopt EXTENDED_GLOB

alias podp=popd
alias zshrc="vim ~/.zshrc"
alias zshlocal="vim ~/.zsh-local"
alias sshconfig="vim ~/.ssh/config"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias vimrc="vim ~/.vimrc"
alias src="cd ~/src"
alias lh='ls -a | egrep "^\."'
alias redot="foreach i (~/dotfiles/.*) echo $i; end"
alias ta="todo.sh add"
alias td="todo.sh do"
alias tl="todo.sh list"
alias tlw="todo.sh list @work"
alias tli="todo.sh list @idea"
alias tlh="todo.sh list @home"
alias vncstart="vncserver -geometry 1920x1080"
eval "$(fasd --init auto)"

#Make windows key work with xmonad
alias fixkeys='xmodmap -e "add mod4 = Super_L"'
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git cabal mvn)

source $ZSH/oh-my-zsh.sh
# User configuration


export MAVEN_OPTS="-Xms2048m -Xmx4096m -XX:MaxPermSize=4096m -XX:PermSize=4096m"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR=vim

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


if [[ -f ~/.zsh-local ]]; then
	. ~/.zsh-local
fi


#[ -s "$SWIVM_DIR/swivm.sh" ] && . "$SWIVM_DIR/swivm.sh"  # This loads swivm
