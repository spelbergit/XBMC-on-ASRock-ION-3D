#!/bin/bash

#
# Commands scripted as shown on this fantastic site:
#
#   http://doityourselfhtpc.com/2010/12/22/asrock-ion-330-ht-remote-and-xbmc-live/
#
# Just enter your sudo password and press [Enter] a few times when apt asks for it...
#

wget http://europe.asrock.com/downloadsite/drivers/Nettop/Ubuntu/IR\(10.04\).zip

unzip IR\(10.04\).zip

cd IR\(10.04\)

unzip lirc-nct677x-1.0.4-ubuntu10.04.zip
unzip lirc-nct677x-src-1.0.4-ubuntu10.04.zip

sudo ln -s /dev/ttyS0 /dev/lirc0

sudo apt-get purge lirc
sudo apt-get install lirc

sudo apt-get install lirc-modules-source
sudo dpkg -i lirc-nct677x-src-1.0.4-ubuntu10.04.deb
sudo dkms add -m lirc-nct677x-src -v 1.0.4-ubuntu9.10
sudo dkms build -m lirc-nct677x-src -v 1.0.4-ubuntu9.10
sudo dkms install -m lirc-nct677x-src -v 1.0.4-ubuntu9.10

sudo apt-get purge lirc-modules-source
sudo dpkg -i lirc-nct677x-1.0.4-ubuntu10.04.deb

cd ..
