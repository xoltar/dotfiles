dotfiles=$( cd $(dirname $0) ; pwd -P )

cd ~
ln -s ${dotfiles}/.vim
ln -s ${dotfiles}/vimrc_link.vim .vim
ln -s ${dotfiles}/.gitconfig
ln -s ${dotfiles}/.zshrc
git clone https://github.com/robbyrussell/oh-my-zsh .oh-my-zsh
git clone https://github.com/syl20bnr/spacemacs .emacs.d


