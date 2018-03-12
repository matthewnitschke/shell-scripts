#!/bin/bash

# install file-cleaner dependencies
cd file-cleaner
yarn install

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
