#!/bin/bash

FILE_COUNT=$(gvfs-ls trash:// | wc -l)
FILE_COUNT_THRESHOLD=30

if [ $FILE_COUNT -gt $FILE_COUNT_THRESHOLD ]; then
	echo "$FILE_COUNT files in the trash"

	zenity --notification --text="trash has $FILE_COUNT files in it"
fi