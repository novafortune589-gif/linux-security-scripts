#!/bin/bash

read -r -p "type the name of the file: " filename # takes the file name

filename=${filename,,}   # convert to lowercase

# Check if the file actually exists
if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' does not exist."
    exit 1
fi
# to set the type of the file
case "$filename" in 
    *.jpg|*.jpeg|*.png|*.gif)  mkdir -p ~/Pictures && mv $filename ~/Pictures/   ;;
    *.pdf|*.doc|*.txt)  mkdir -p ~/Documents && mv $filename ~/Documents/   ;;
    *.sh|*.py|*.bash)  mkdir -p ~/Scripts && mv $filename ~/Scripts/   ;;
    *.mp3|*.wav|*.flac|*.aac)  mkdir -p ~/Music && mv $filename ~/Music/   ;;
    *.zip|*.tar|*.gz|*.7z)  mkdir -p ~/Compressed && mv $filename ~/Compressed/   ;;
    *.mp4|*.mkv|*.avi|*.mov)  mkdir -p ~/Videos && mv $filename ~/Videos/   ;;
    
    *)                 mkdir -p ~/Unknown && mv $filename ~/Unknown/   ;;
esac   

