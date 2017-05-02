#!/bin/sh
## pivpn

## Variables
source /etc/piadvanced/install/firewall.conf
source /etc/piadvanced/install/variables.conf
source /etc/piadvanced/install/userchange.conf

{ if 
(whiptail --yes-button "Skip" --no-button "Proceed" --yesno "Do you want to install pivpn?" 10 80) 
then
echo "User Declined pivpn"
else
curl -L https://install.pivpn.io | bash
fi }
