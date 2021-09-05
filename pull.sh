#!/usr/bin/env bash

USER=<your username here>
REPO=https://github.com/przempore/arch_linux_config_ansible.git
INVENTORY_FILE=127.0.0.1,
BRANCH_NAME=main

ansible-pull --url $REPO -connection=local --inventory $INVENTORY_FILE packages.yml main_config.yml --checkout $BRANCH_NAME --force --ask-become-pass --extra-vars "exec_username=$USER"

