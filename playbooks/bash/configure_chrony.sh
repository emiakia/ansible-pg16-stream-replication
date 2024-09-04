#!/bin/bash

# Configure Chrony
sed -i "/^server /d" /etc/chrony.conf
echo "server $1 iburst" >> /etc/chrony.conf
