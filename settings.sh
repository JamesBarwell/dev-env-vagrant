# Set up dotfiles
if [ ! -d "/tmp/dotfiles" ]; then
  git clone https://github.com/JamesBarwell/dotfiles.git /tmp/dotfiles
fi
cp /tmp/dotfiles/.vimrc ~/
cp /tmp/dotfiles/.gitconfig ~/

# Set up vim
if [ ! -d "~/.vim/bundle/Vundle.vim" ]; then
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall