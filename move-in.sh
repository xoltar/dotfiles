dotfiles=$( cd $(dirname $0) ; pwd -P )

cd ~
ln -s ${dotfiles}/.vim
ln -s ${dotfiles}/vimrc_link.vim .vim
mkdir -p .config/nvim
ln -s ${dotfiles}/nvim-init.vim .config/nvim/init.vim
ln -s ${dotfiles}/.ideavimrc
ln -s ${dotfiles}/.gitconfig
ln -s ${dotfiles}/.zshrc
ln -s ${dotfiles}/.zshenv
#  git clone https://github.com/robbyrussell/oh-my-zsh .oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/syl20bnr/spacemacs .emacs.d
ln -s ${dotfiles}/.spacemacs.d


