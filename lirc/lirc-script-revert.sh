#!/bin/bash

#
# Commands scripted as shown on this fantastic site:
#
#   http://doityourselfhtpc.com/2010/12/22/asrock-ion-330-ht-remote-and-xbmc-live/
#
# This script reverts all steps...
#


sudo dkms remove -m lirc-nct677x-src -v 1.0.4-ubuntu9.10 --all
sudo apt-get purge lirc-nct677
sudo apt-get purge lirc-nct677-src
sudo apt-get purge lirc-modules-source
sudo apt-get purge lirc

