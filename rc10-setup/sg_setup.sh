#!/bin/sh

. ../upgrade_params
PKG_VERSION="16"

###################### PERFORM ACTIONS NOW ##################################

/usr/bin/killall monitor.sh || true
/usr/bin/killall instamsg || true

cp -f gpio.sh ${HOME_DIRECTORY}
/bin/chmod 777 ${HOME_DIRECTORY}/gpio.sh

cp -f reboot.sh ${HOME_DIRECTORY}
/bin/chmod 777 ${HOME_DIRECTORY}/reboot.sh

cp -f rc10-rc.local /etc/rc.local
/bin/chmod 777 /etc/rc.local

cp -f rc10-systemreboot.sh  /usr/sbin/systemreboot.sh
/bin/chmod 777 /usr/sbin/systemreboot.sh

cp ioeye_maestro-e220_17.3.0_17.3.0 ${HOME_DIRECTORY}/instamsg

