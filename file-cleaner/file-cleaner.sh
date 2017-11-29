DOWNLOADS_FILE_COUNT=$(ls ~/Downloads/ | wc -l)
TRASH_FILE_COUNT=$(gvfs-ls trash:// | wc -l)
TRASH_FILE_COUNT_THRESHOLD=30

if [ $DOWNLOADS_FILE_COUNT -gt 0 ] || [ $TRASH_FILE_COUNT -gt $TRASH_FILE_COUNT_THRESHOLD ]; then
    export DISPLAY=:0.0
    gnome-terminal -e "node Scripts/file-cleaner/file-cleaner.js"
fi

# --window-with-profile=FileCleaner