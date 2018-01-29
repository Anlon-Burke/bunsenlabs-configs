#!/bin/bash

TARBALL=~/Downloads/firefox.tar.bz2
URL="https://download.mozilla.org/?product=firefox-beta-latest-ssl&os=linux64&lang=en-US"

wget -O $TARBALL $URL
rm -rf /opt/firefox
tar -xjvf $TARBALL -C /opt
# update-alternatives --install /usr/bin/x-www-browser x-www-browser /opt/firefox/firefox 200
rm $TARBALL
