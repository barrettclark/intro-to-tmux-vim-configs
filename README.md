# intro-to-tmux-vim-configs

Materials for the Intro to Tmux and Vim Configs RailsConf Workshop.

This takes for granted that you have Homebrew and Xcode Command Line Tools installed (if you're
using a Mac).

## Initial Setup

This repo contains a `Brewfile` that you can use to install dependencies for MacOS.

```sh
brew bundle --verbose
```

If you're using Debian or Ubuntu you can install dependencies with `apt`:

```sh
sudo apt-get install curl fonts-powerline git powerline sudo tmux tmuxp vim wget
```

## Vim - Step 1

This step gives you a starter `~/.vimrc` config and a Ruby script to play with.

```sh
git checkout vim-step1
```

## Tmux - Step 1

This step gives you a starter `~/.tmux.conf` config.

```sh
git checkout tmux-step1
```

## Tmux - Step 2

This step gives you a default tmuxp config file and some tmux session management scripts.

```sh
git checkout tmux-step2
```

## Tmux - Step 3

This step introduces the tmux plugin manager (tpm).

```sh
git checkout tmux-step3
```

In addition to the documented install and update keystrokes, you can also use the following:

```sh
~/.tmux/plugins/tpm/bin/install_plugins
~/.tmux/plugins/tpm/bin/clean_plugins
~/.tmux/plugins/tpm/bin/update_plugins all
```

## Vim - Step 2

Now we get into plugins for Vim!

```sh
git checkout vim-step2
```

## Vim - Step 3

Now we start making the vim status line look cool.

```sh
git checkout vim-step3
```

## Tmux - Step 4

Finally, we tackle the tmux status line to dress it up.

```sh
git checkout tmux-step4
```

## Vim - Step 4

Implement the NERDTree file browser and filetype icons

```sh
git checkout vim-step4
```
