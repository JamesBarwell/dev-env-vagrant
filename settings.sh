# Set up dotfiles
if [ ! -d "/tmp/dotfiles" ]; then
  git clone https://github.com/JamesBarwell/dotfiles.git /tmp/dotfiles
fi
cp /tmp/dotfiles/.vimrc ~/
cp /tmp/dotfiles/.gitconfig ~/

# Set up bash
if ! grep -q "completion-ignore-case" ~/.bashrc; then
    echo 'bind "set completion-ignore-case on"' >> ~/.bashrc
fi

# Set up vim
if [ ! -d "~/.vim/bundle/Vundle.vim" ]; then
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall
