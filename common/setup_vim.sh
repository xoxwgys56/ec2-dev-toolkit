#!/bin/bash

# ref : https://www.hahwul.com/2018/02/26/coding-vim-plugin-language-plugin-ctrlp/
# in this script install plugin using pathogen
# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# syntax highlight
# install ruby highlight
git clone git://github.com/vim-ruby/vim-ruby.git ~/.vim/bundle/vim-ruby
# install go highlight
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
# install javascript highlight
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/pack/vim-javascript/start/vim-javascript
# install python highlight
git clone https://github.com/hdima/python-syntax.git ~/.vim/pack/vim-python

# color scheme
# install jellybeans color scheme
mkdir -p ~/.vim/colors
cd ~/.vim/colors
curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
# install darcula for color scheme
cd ~/.vim/bundle
git clone https://github.com/blueshirts/darcula

# plugins
# ref : https://vimawesome.com/

# install syntastic
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle && \
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
# install fugitive for git
cd ~/.vim/bundle
git clone https://github.com/tpope/vim-fugitive
# install surround for tags
cd ~/.vim/bundle
git clone https://github.com/tpope/vim-surround
# install NERDTree for file browser
# activate with `:NERDTree`
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree
# install airline for staus/tabline
git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/vim-airline

# copied file from this repo
# if file existed append content
cat ./vimrc >> ~/.vimrc
