#!/bin/bash

# Downloading Link provided
wget $LINK/download
mv download download.zip
unzip -q download.zip -d /odtp/odtp-output