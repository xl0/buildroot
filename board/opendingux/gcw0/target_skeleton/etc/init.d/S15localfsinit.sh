#!/bin/sh

if [ -z "$1" ] || [ "x$1" = "xstart" ]; then

    mkdir -p /boot/local
    for i in bin etc home/apps lib sbin share; do
        mkdir -p /usr/local/$i
    done

    if [ ! -f /etc/local/shadow ]; then
        cp /etc/shadow_skel /etc/local/shadow
    fi

    if [ ! -f /etc/local/timezone ]; then
        echo 'CET-1CEST,M3.5.0,M10.5.0' > /etc/local/timezone
    fi

fi

