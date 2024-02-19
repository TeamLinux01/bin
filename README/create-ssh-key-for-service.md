# Create SSH keys for service

- [Create SSH keys for service](#create-ssh-keys-for-service)
  - [Purpose](#purpose)
  - [Usage](#usage)

## Purpose

This script creates a new Ed21559 SSH public and private key-pair for ssh service.

## Usage

In a terminal, run `/create_ssh_key_for_service.sh *server-hostname* *username*`.

- The script will create the ssh key-pair in the format *username*@*server-hostname* in the ~/.ssh folder and add the following to ~/.ssh/config file:

  - Host *server-hostname*
  - HostName *server-hostname*
  - User *username*
  - IdentityFile ~/.ssh/*ssh-private-key*

Copy the ssh public key to the remote device in `~/.ssh/authorized_keys` on the remote.
