#!/bin/bash

source "/odtp/odtp-component-client/src/shell/log.sh"
source "/odtp/odtp-component-client/src/shell/traceback.sh"

# Downloading Link provided

odtp::print_info "Download data from LINK: $LINK"
wget $LINK/download
odtp::print_info "Zip downloaded data"
mv download download.zip
odtp::print_info "Unzip downloaded data into output directory"
unzip -q download.zip -d /odtp/odtp-output
