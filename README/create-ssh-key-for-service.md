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

### Enable ssh public key logins on the server

1. Uncomment lines in `/etc/ssh/sshd_config` on the server. Lines `# PubkeyAuthentication yes` and `# PubkeyAuthentication yes`.

    ```bash
    sudo nano /etc/ssh/sshd_config
    ```

    The file should look like this after editing.

    ```
    ...
    # Authentication:
    ...
    PubkeyAuthentication yes
    ...
    PasswordAuthentication no
    ...
    ```

1. Copy the public key into `./ssh/authorized_keys` file on the server. Without having sshd already setup, it will have to be manually copied by another way.

1. Enable and start the ssh daemon service on the server.

    ```bash
    sudo systemctl enable sshd.service && sudo systemctl start sshd.service
    ```

1. Unblock port 22 (TCP) `ssh` in your firewall on the server to be able to now access the device using the public key.

## Backup Files

Files are stored in `~/.ssh`, these files should be archived and copied to a secure location as a backup.

Permission settings for the `.ssh` folder should be `700`, the `*.pub` files should be `644` and the private keys and other files should be `600`.
