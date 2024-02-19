# Create SSH keys for service

- [Create SSH keys for service](#create-ssh-keys-for-service)
  - [Purpose](#purpose)
  - [Usage](#usage)
  - [Backup Files](#backup-files)

## Purpose

This script creates a new Ed21559 SSH public and private key-pair for ssh service.

## Usage

> 🚧 Warning
>
> I highly recommend setting passphrases for all keys created, in case the keys are stolen.

In a terminal, run `/create_ssh_key_for_service.sh *server-hostname* *username*`.

- The script will create the ssh key-pair in the format *username*@*server-hostname* in the ~/.ssh folder and add the following to ~/.ssh/config file:

  - Host *server-hostname*
  - HostName *server-hostname*
  - User *username*
  - IdentityFile ~/.ssh/*ssh-private-key*

Copy the ssh public key to the remote device in `~/.ssh/authorized_keys` on the remote.

## Backup Files

Files are stored in `~/.ssh`, these files should be archived and copied to a secure location as a backup.

Permission settings for the `.ssh` folder should be `700`, the `*.pub` files should be `644` and the private keys and other files should be `600`.
