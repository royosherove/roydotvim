git clone https://github.com/royosherove/roydotvim $HOME/.vim

#install tmux configs
cp $HOME/.vim/.tmux.conf $HOME
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

command -v tmux | grep -q tmux
if [ $? = "0" ]; then
        echo "tmux found! Installling plugins.."
        # start a server but don't attach to it
        tmux start-server
        # create a new session but don't attach to it either
        tmux new-session -d
        # install the plugins
        ~/.tmux/plugins/tpm/scripts/install_plugins.sh
        # killing the server is not required, I guess
        tmux kill-server
        echo "tmux installation DONE"
else
        echo "No tmux?. after you install it RUN it and press <leader> + I.."
fi

echo "Installing all the vim stuff..."
cp $HOME/.vim/.vimrc $HOME
vim +PlugInstall +qall
echo "I think we're done here"

if [ "$(uname)" = "Darwin" ]; then
        # Do something under Mac OS X platform
        brew tap caskroom/fonts
        brew cask install font-hack-nerd-font
fi
#elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
        # Do something under GNU/Linux platform
#elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
        # Do something under 32 bits Windows NT platform
#elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
        # Do something under 64 bits Windows NT platform
#fi
#fi
