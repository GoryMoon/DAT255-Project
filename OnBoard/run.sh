#! /bin/bash

if ! pgrep -x "rmiregistry" > /dev/null
then
    rmiregistry &
fi
java -cp "jna-4.5.0.jar:." -Djava.rmi.server.codebase=file:/home/pi/can-utils/absolut/ -Djava.security.policy=../rmi.policy absolut.acc.Main