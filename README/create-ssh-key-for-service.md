# Create SSH keys for service

- [Create SSH keys for service](#create-ssh-keys-for-service)
  - [Purpose](#purpose)
  - [Usage](#usage)

## Purpose

This script creates a new Ed21559 SSH public and private keypair for ssh service.

## Usage

./create_ssh_key_for_service.sh *server-hostname* *username*

- The script will create the ssh key in the format *username*@*server-hostname* in the ~/.ssh folder and add the following to ~/.ssh/config file:

  - Host *server-hostname*
  - HostName *server-hostname*
  - User *username*
  - IdentityFile ~/.ssh/*ssh-key*
