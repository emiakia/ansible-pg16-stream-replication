#!/bin/bash

# Generate SSH key pair if not exists
KEY_PATH="$HOME/.ssh/id_rsa"

if [ ! -f "$KEY_PATH" ]; then
  ssh-keygen -t rsa -b 2048 -f "$KEY_PATH" -N ""
  echo "SSH key pair generated at $KEY_PATH"
else
  echo "SSH key pair already exists at $KEY_PATH"
fi
