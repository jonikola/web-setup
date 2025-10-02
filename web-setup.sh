#!/bin/bash

# Declaration of variables
PKGS="nginx wget unzip"
SVC="nginx"
TPL_URL="https://www.tooplate.com/zip-templates/2092_shelf.zip"
TMPDIR="/tmp/files"
TPL_NAME="2092_shelf"

# Installing packages
echo "----------------------------------------"
echo "Installing packages"
echo "----------------------------------------"
sudo dnf install $PKGS -y #> /dev/null

# Start and enable service
echo "----------------------------------------"
echo "Start and enable nginx service"
echo "----------------------------------------"
sudo systemctl start nginx
sudo systemctl enable nginx

# Downloading and deploying page
echo "----------------------------------------"
echo "Starting webpage deployment"
echo "----------------------------------------"
mkdir -p $TMPDIR
cd $TMPDIR
wget $TPL_URL
unzip $TPL_NAME.zip
sudo rm -rf /usr/share/nginx/html/*
sudo cp -r $TPL_NAME/* /usr/share/nginx/html/

# Restart nginx
echo "----------------------------------------"
echo "Restarting nginx service"
echo "----------------------------------------"
sudo systemctl restart $SVC

# Clean up
echo "----------------------------------------"
echo "Removing temporary files"
echo "----------------------------------------"
rm -rf $TMPDIR

