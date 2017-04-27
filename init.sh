git clone https://github.com/royosherove/roydotvim $HOME/.vim
cp $HOME/.vim/.vimrc $HOME
vim +PlugInstall +qall
echo "I think we're done here"

if [ "$(uname)" == "Darwin" ]; then
        # Do something under Mac OS X platform        
        brew tap caskroom/fonts   
        brew cask install font-hack-nerd-font
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
        # Do something under GNU/Linux platform
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
        # Do something under 32 bits Windows NT platform
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
        # Do something under 64 bits Windows NT platform
fi
fi

