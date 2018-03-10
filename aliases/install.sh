parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P ) # get the path of the parents directory

LOCAL_ALIASES="$parent_path/aliases" # the file which is located at /shell-scripts/aliases/aliases

# add aliases to bash_aliases
if [ ! -f ~/.aliases ]; then
    echo "creating ~/.aliases file"
    touch ~/.aliases
fi

while read myAliase; do
    if ! grep -q "$myAliase" ~/.aliases; then
        echo "$myAliase # added automaticlly via shell-scripts" >> ~/.aliases
        echo "Added: '$myAliase' to ~/.aliases"
    fi 
done < $LOCAL_ALIASES

if [ -f ~/.zshrc ]; then
    if ! grep -q "~/.aliases" ~/.zshrc; then
        echo "Adding reference to ~/.aliases file in ~/.zshrc"
        echo "touch ~/.aliases" >> ~/.zshrc
    fi
fi

if [ -f ~/.bashrc ]; then
    if ! grep -q "~/.aliases" ~/.bashrc; then
        echo "Adding reference to aliases file in ~/.bashrc"
        echo "touch ~/.aliases" >> ~/.bashrc
    fi
fi