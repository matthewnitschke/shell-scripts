#!/bin/bash

# install file-cleaner dependencies
cd file-cleaner
yarn install

# add aliases to bash_aliases
if [ -f ~/.bash_aliases ]; then
    USER_ALIASES=~/.bash_aliases
    LOCAL_ALIASES=~/Scripts/shell-scripts-aliases
    
    while read myAliase; do
        if grep -q "$myAliase" $USER_ALIASES; then
            echo "Aliase: '$myAliase' already found"
        else
            echo "$myAliase # added automaticlly from ~/Scripts/install.sh" >> $USER_ALIASES
            echo "Added: '$myAliase' to ~/.bash_aliases"
        fi 
    done < $LOCAL_ALIASES
fi

# add cron to users crontab
LOCAL_CRON=~/Scripts/shell-scripts-cron
while read myCron; do
    (crontab -l ; echo "$myCron") | sort - | uniq - | crontab -
done < $LOCAL_CRON
echo "contab updated"


# add sublime text 3 cli command (subl)
if [ -f /usr/local/bin/subl ]; then
    echo "sublime text 3 cli command already exists"
else
    sudo ln -s /opt/sublime_text/sublime_text /usr/local/bin/subl
fi
