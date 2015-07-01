#!/bin/bash
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir ~/.vim/.backup ~/.vim/.swp ~/.vim/.undo
ln -s ~/.dots/zshrc ~/.zshrc
ln -s ~/.dots/vimrc ~/.vimrc
vim +PluginInstall +qall
