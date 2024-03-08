#!/bin/bash

# Downloading Link provided
wget $LINK/download
mv download download.zip
unzip download.zip -d /odtp/odtp-output

if [ "$TRANSFER_INPUT_TO_OUTPUT" == "TRUE" ]; then
    cp -r /odtp/odtp-input/* /odtp/odtp-output
fi

# All the output folder and files are placed in odtp-output
cp -r /odtp/odtp-workdir/output/* /odtp/odtp-output
