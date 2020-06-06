cd ~/
ln -s dotfiles/.vimrc .vimrc
ln -s dotfiles/.tmux.conf .tmux.conf
ln -s dotfiles/.vim .vim
# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# Install dependencies for YCM
echo 'Installing dependencies for YCM'
sudo apt install build-essential cmake python3-dev

echo 'In order to finish installing YCM, read the readme at'
echo '~/.vim/plugged/YouCompleteMe/README.md'
