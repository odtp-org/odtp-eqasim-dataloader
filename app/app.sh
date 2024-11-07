#!/bin/bash

# Downloading Link provided
# The option --progress=bar:force:noscroll makes the log output less verbose
# While the progressbar is displayed only one line is added for it in the logs
wget --progress=bar:force:noscroll -O download.zip  $LINK/download
echo "Downloaded file with user id and password. Now procedding with unzip"
unzip -q download.zip -d /odtp/odtp-output
echo "Uncompressed file."

if [ -n "$PASSWORD" ]; then
    # Check if the required environment variables are set
    if [ -z "$LINK" ] || [ -z "$PASSWORD" ]; then
        echo "Error: LINK and PASSWORD environment variables must be set."
        exit 1
    fi

    # Extract the user id from the LINK
    USER_ID=$(echo $LINK | sed 's#.*/s/\(.*\)#\1#')

    # Download the file using wget with the provided user id and password
    wget --user=$USER_ID --password=$PASSWORD --progress=bar:force:noscroll --header='X-Requested-With: XMLHttpRequest' -O download.zip https://drive.switch.ch/public.php/webdav/
    
    echo "Downloaded file with user id and password. Now procedding with unzip"
    unzip -qo download.zip -d /odtp/odtp-output
    
    echo "Uncompressed file."
fi
