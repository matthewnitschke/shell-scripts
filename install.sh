#!/bin/bash


# install file-cleaner dependencies
cd file-cleaner
yarn install

# add aliases to bash_aliases
if [ -f ~/.bash_aliases ]; then
    while read myAliase; do 
        if grep -q "$myAliase" ~/.bash_aliases; then
            echo "Aliase: '$myAliase' already found"
        else
            echo "$myAliase # added automaticlly from ~/Scripts/install.sh" >> ~/.bash_aliases
            echo "Added: '$myAliase' to ~/.bash_aliases"
        fi 
    done < ./.bash_aliases

    source ~/.bash_aliases
fi

if [ -f /etc/cron.d/shell-scripts-cron ]; then
else
fi