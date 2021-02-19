dotfiles=$( cd $(dirname $0) ; pwd -P )

cd ~
ln -s ${dotfiles}/.vim
ln -s ${dotfiles}/vimrc_link.vim .vim
mkdir -p .config/nvim
ln -s ${dotfiles}/nvim-init.vim .config/nvim/init.vim
ln -s ${dotfiles}/UltiSnips .config/nvim
ln -s ${dotfiles}/UltiSnips .vim
ln -s ${dotfiles}/.ideavimrc
ln -s ${dotfiles}/.gitconfig
ln -s ${dotfiles}/.tmux.conf

#  ZSH
#  git clone https://github.com/robbyrussell/oh-my-zsh .oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm -f .zshrc
rm -f .zshenv
ln -s ${dotfiles}/.zshrc
ln -s ${dotfiles}/.zshenv

# Spacemacs
# git clone https://github.com/syl20bnr/spacemacs .emacs.d
# ln -s ${dotfiles}/.spacemacs.d
# mkdir -p .emacs.d/private/org-roam
# ln -s ${dotfiles}/org-roam-packages.el .emacs.d/private/org-roam/packages.el

# Doom
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
rm -rf ~/.doom.d
ln -s src/dotfiles/.doom.d
~/.emacs.d/bin/doom doctor # Tell us what dependencies we are missing

# i3
mkdir -p ~/.config/i3
ln -s ${dotfiles}/i3_config ~/.config/i3/config
