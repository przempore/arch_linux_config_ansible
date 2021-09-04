#!/bin/bash

SERVER_NAME=proxy_server
REPO=git@github.com:przempore/dotfiles.git
KEY_FILE=/home/$USER/.ssh/id_rsa
INVENTORY_FILE=inventory.yml
BRANCH_NAME=main

ansible-pull --url $REPO --key-file $KEY_FILE --inventory $INVENTORY_FILE packages.yml --checkout $BRANCH_NAME --force --ask-become-pass

