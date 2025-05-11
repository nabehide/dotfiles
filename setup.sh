ln -sf ~/dotfiles/.vimrc ~/

mkdir -p ~/.cache/rc
ln -sf ~/dotfiles/dein.toml ~/.cache/rc/
ln -sf ~/dotfiles/dein_lazy.toml ~/.cache/rc/

ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
