# A collection of bash scripts for ~/bin/

[Create SSH keys for service (README link)](README/create-ssh-key-for-service.md)

[Create GPG keys (README link)](README/create-gpg-key.md)

[Docker images updater (README link)](README/docker-images-updater.md)

## Setup instructions

Recommend forking the project repo first.

> [!NOTE]
>
> Use the green `Code` button on the repo page to get the http or ssh link to paste after the `git clone` command. Replace `[git repo]` with the text copied from the code button.

Run the following command to get started:

```bash
git clone [git repo] ~/bin
```

### FISH shell setup

After running the above command, run this in the terminal

```fish
set -U fish_user_paths ~/bin $fish_user_paths
```

Close the terminal and it will be set on next session.
