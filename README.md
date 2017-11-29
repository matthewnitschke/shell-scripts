# Installation
move the downloaded files into `~/Scripts`, and then run
```
~/Scripts/install.sh
```
install.sh installs file-cleaner dependencies and adds the local `./bash_aliases` to the users `~/.bash_aliases`

# Included Scripts

## file-cleaner
* Opens a terminal which allows for cleaning trash bin and downloads folder when files exist in them
* run via crontab

## homework
* clones my latex homework template
* run via .bash_aliases

## sd-notify (simple desktops notify)
* checks to see if simple has a new desktop image. If it does, update local .sd-notify-preference so we know when a new one is there, and send notification to inform user
* run via crontab
