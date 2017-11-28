#!/bin/sh

FILE_COUNT=$(ls ~/Downloads/ | wc -l)

if test $FILE_COUNT != "0"; then

	zenity --question --text="Downloads folder has $FILE_COUNT file(s). \n Would you like to move them into the trash?" --title="Downloads folder has files" --display=:0.0
	case $? in 
	0) gvfs-trash ~/Downloads/* && zenity --notification --text="Files moved to trash: $FILE_COUNT"
	;; 
	esac
	
fi


