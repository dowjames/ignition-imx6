#!/bin/bash
set -e
echo "Downloading"
DIST_NAME=Cubox-i_Debian_2.2_wheezy_3.18.1
curl -L -k http://mirror.igorpecovnik.com/${DIST_NAME}.zip --progress > /tmp/deb.zip
echo "Flashing"
echo "### 70.0%"
unzip /tmp/deb.zip ${DIST_NAME}.raw -p | dd of=/dev/mmcblk0 bs=1M conv=fsync
echo "### 100%"
sync
