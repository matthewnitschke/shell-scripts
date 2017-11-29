CURRENT_IMAGE=$(curl -s 'http://simpledesktops.com/' | egrep "<img src=(\".*?\") title=(\".*?\")" | head -1)
LAST_IMAGE=$(cat .sd-notify-preferences)

echo $CURRENT_IMAGE

if [ "$CURRENT_IMAGE" == "$LAST_IMAGE" ]; then
    echo "MATHC"
else
    echo $CURRENT_IMAGE > ".sd-notify-preferences"
    
    zenity --notification --text="Simple Desktops has a new image"
fi