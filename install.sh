#!/bin/bash


# install file-cleaner dependencies
cd file-cleaner
yarn install

# add aliases to bash_aliases
if [ -f ~/.bash_aliases ]; then
    USER_ALIASES=~/.bash_aliases
    LOCAL_ALIASES=./.bash_aliases
    
    while read myAliase; do 
        if grep -q "$myAliase" $LOCAL_ALIASES; then
            echo "Aliase: '$myAliase' already found"
        else
            echo "$myAliase # added automaticlly from ~/Scripts/install.sh" >> $USER_ALIASES
            echo "Added: '$myAliase' to ~/.bash_aliases"
        fi 
    done < $LOCAL_ALIASES

    source $USER_ALIASES
fi

LOCAL_CRON=./shell-scripts-cron
while read myCron; do
    (crontab -l ; echo "$myCron") | sort - | uniq - | crontab -
done < $LOCAL_CRON
echo "contab updated"