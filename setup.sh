#!/bin/bash
#
# Sets up my Pi for me, so I don't risk forgetting all the stuff i do.
#
# Before running this script, make sure to run the Imagers.
# Available at https://www.raspberrypi.org/blog/raspberry-pi-imager-imaging-utility/.

source parameters.sh

BOOTPATH="/media/$USER/boot"

country=$country wifi=$wifi wifi_pw=$wifi_pw \
  envsubst < resources/wpa_supplicant.conf > ${BOOTPATH}/wpa_supplicant.conf

touch ${BOOTPATH}/ssh
