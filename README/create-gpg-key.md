# Create GPG keys

- [Create GPG keys](#create-gpg-keys)
  - [Purpose](#purpose)
  - [Usage](#usage)
  - [Backup Files](#backup-files)

## Purpose

This script creates new Ed21559 GPG public and private key-pair. It will ask for the name and email address to be stored in the keys.

## Usage

> 🚧 Warning
>
> I highly recommend setting passphrases for all keys created, in case the keys are stolen.

In a terminal, run `create_gpg_key.sh`.

## Backup Files

Files are stored in `~/.gnupg`, these files should be archived and copied to a secure location as a backup.

Permission settings for `~/.gnupg` should be `700`, subfolder should also be `700`, private keys should be `600` and public keys could be `644`.
