#!/bin/bash

# Downloading Link provided
# The option --progress=bar:force:noscroll makes the log output less verbose
# While the progressbar is displayed only one line is added for it in the logs
wget --progress=bar:force:noscroll $LINK/download
mv download download.zip
unzip -q download.zip -d /odtp/odtp-output
