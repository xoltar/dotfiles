
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
alias ta="tmux attach"
alias vncstart="vncserver -geometry 1920x1080"
eval "$(fasd --init auto)"

#Make windows key work with xmonad
#alias fixkeys='xmodmap -e "add mod4 = Super_L"'
#alias a='fasd -a'        # any
#alias s='fasd -si'       # show / search / select
#alias d='fasd -d'        # directory
#alias f='fasd -f'        # file
#alias sd='fasd -sid'     # interactive directory selection
#alias sf='fasd -sif'     # interactive file selection
#alias z='fasd_cd -d'     # cd, same functionality as j in autojump
#alias zz='fasd_cd -d -i' # cd with interactive selection


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git cabal mvn fasd)

source $ZSH/oh-my-zsh.sh
# User configuration

DISABLE_AUTO_UPDATE="true"


if [[ -f ~/.zsh-local ]]; then
	  . ~/.zsh-local
fi

