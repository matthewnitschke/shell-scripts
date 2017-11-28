## dc.sh (downloads clear)
* when run, checks to see if there are files in the downloads folder, if so gives user option to view, delete, or ignore
* run via crontab

## tc.sh (trash clear)
* when run, checks to see if there are more than a specified threshold of files in the trashbin. If there are gives the user options to view, delete, or ignore
* run via crontab

## sd-notify.sh (simple desktops notify)
* checks to see if simple has a new desktop image. If it does, update local .sd-notify-preference so we know when a new one is there, and send notification to inform user
* run via crontab