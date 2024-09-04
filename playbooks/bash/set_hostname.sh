#!/bin/bash

# Set the hostname
hostnamectl set-hostname $1

# Update /etc/hosts
echo "$2 $1" >> /etc/hosts
