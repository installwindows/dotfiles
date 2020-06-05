export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="varnaud"
COMPLETION_WAITING_DOTS="true"
plugins=(git virtualenv zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

source ~/.profile

export EDITOR='nvim'

# Sculpteo stuff
alias s1='cd ~/work/integ/co/site_v1'
alias activate='cd ~/work/integ/ && ./integ.sh activate'

# Mac/Linux config
if [ "$(uname -s)" = "Darwin" ]
then
	if [ ! -d ~/homebrew ]
	then
		mkdir ~/homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C ~/homebrew
	fi
	export PATH=/Users/varnaud/homebrew/bin:$PATH
	alias brew=/Users/varnaud/homebrew/bin/brew
	alias vim=/Users/varnaud/homebrew/bin/nvim
	alias vi=/Users/varnaud/homebrew/bin/nvim
else
	alias vim=nvim
	alias vi=nvim
	alias pbcopy='xsel --clipboard --input'
	alias pbpaste='xsel --clipboard --output'
fi
export MAIL=varnaud@student.42.us.org

alias py=ipython

function upload() {
   curl -F"file=@$1" http://0x0.st 
}
export FPATH=$FPATH:/home/var/.config/zsh/completion
