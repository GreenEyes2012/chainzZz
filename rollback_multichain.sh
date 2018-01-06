#!/bin/bash

# NC='\033[0m' # No Color
# RED='\033[0;31m'
# LIGHTGREEN='\033[1;32m'
# CYAN='\033[0;36m'
# LIGHTYELLOW='\033[1;33m'
# bold=$(tput bold)
# normal=$(tput sgr0)

username='youruser'
chainname='chainzZz'

echo '----------------------------------------'
echo -e 'RESTORING.....'
echo '----------------------------------------'

ps axf | grep 'multichaind '$chainname | grep -v grep | awk '{print "kill -9 " $1}' | sh
rm -rf /home/$username/.multichain/$chainname
rm -rf /var/www/html/hashchain
rm -rf /var/www/html/apps
rm -rf /var/www/html/multichain-web-demo
ps axf | grep 'python -m Mce.abe --config' | grep -v grep | awk '{print "kill -9 " $1}' | sh
rm -rf /home/$username/multichain-explorer/
rm -rf /home/$username/$chainname.explorer.sqlite
rm -rf /home/$username/multichain-1.0*
rm -rf /var/www/html/default_configs
rm -rf /var/www/html/multichain-1.0*

echo ''
echo ''
echo '----------------------------------------'
echo ''
echo ''
echo ''
echo ''
