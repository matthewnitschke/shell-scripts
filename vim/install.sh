if [ ! -f ~/.vim ]; then
    mkdir ~/.vim
fi

if [ ! ~/.vim/bundle ]; then
    mkdir ~/.vim/bundle
fi

if [ ! ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

