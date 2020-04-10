#!/bin/bash

/etc/init.d/fcgiwrap start
chmod 766 /var/run/fcgiwrap.socket
nginx -g "daemon off;"
