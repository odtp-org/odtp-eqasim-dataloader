#!/bin/bash

# Downloading Link provided
wget $LINK/download
mv download download.zip
unzip download.zip -d /odtp/odtp-output

# All the output folder and files are placed in odtp-output
cp -r /odtp/odtp-workdir/output/* /odtp/odtp-output
