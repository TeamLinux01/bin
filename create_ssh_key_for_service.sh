#!/bin/bash
#creates a new SSH keypair, then adds the configuration to the ssh agent
#argument 1 ($1) server-hostname, argument 2 ($2) username

if [[ $# -ne 2 ]] ; then #display an error if both arguments are not entered
    printf "Missing arguments: server-hostname, username\nExample:\n\n$0 server-hostname username\n";
    exit 1;
fi

ssh-keygen -t ed25519 -C "Server: $1 Username: $2" -f ~/.ssh/$2@$1 &&
printf "Created ~/.ssh/$2@$1\nNow adding information to ~/.ssh/config\n" &&
sed -i '$a Host '$1'\n    HostName '$1'\n    User '$2'\n    IdentityFile ~/.ssh/'$2'@'$1 ~/.ssh/config &&
printf "Added to ~/.ssh/config:\nHost $1\n    HostName $1\n    User $2\n    IdentityFile ~/.ssh/$2@$1\n";
