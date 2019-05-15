# Noobs Term

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/d83cf5c6315940b684318b0d7c756572)](https://www.codacy.com/app/aaronkjones/noobs-term?utm_source=github.com&utm_medium=referral&utm_content=aaronkjones/noobs-term&utm_campaign=Badge_Grade)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/aaronkjones/noobs-term/blob/master/LICENSE)
[![CircleCI branch](https://img.shields.io/circleci/project/github/aaronkjones/noobs-term/master.svg)](https://circleci.com/gh/aaronkjones/noobs-term/)
[![Tweet](https://img.shields.io/twitter/url/http/shields.io.svg?style=social)](https://twitter.com/intent/tweet?url=http://noobs-term.com&text=A%20terminal%20bundle%20for%20everyone&hashtags=tmux,zsh,command-line)

## Overview

![Cover preview](_media/cover_preview_lrg.png)  
Noobs Term is an installer that incorporates some of the wonderful terminal programs, packages, and configurations that are commonly installed together.

## What's Included

| Feature                                                             | Description                                                                                   |
| ------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| [zsh](https://en.wikipedia.org/wiki/Z_shell)                        | a popular shell with features like completion, path correction, spelling correction, and more |
| [tmux](https://github.com/tmux/tmux)                                | terminal multiplexer allows you to manage multiple terminal sessions from a single window       |
| [neovim](https://neovim.io/)                                        | a project that seeks to aggressively refactor Vim                                             |
| [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)              | a framework for managing your zsh configuration                                               |
| [vim-sensible](https://github.com/tpope/vim-sensible)               | vim settings everyone can agree on                                                            |
| [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible)      | tmux settings everyone can agree on                                                           |
| [nord-tmux](https://github.com/arcticicestudio/nord-tmux)           | An arctic, north-bluish clean and elegant tmux color theme                                    |
| [nord-vim](https://github.com/arcticicestudio/nord-vim)             | An arctic, north-bluish clean and elegant Vim color theme                                     |
| [spaceship-prompt](https://github.com/denysdovhan/spaceship-prompt) | A zsh prompt for Astronauts                                                                   |

## Showcase

### Completions

Completion scripts for [many](https://github.com/zsh-users/zsh-completions/tree/master/src) programs.

![Completions](https://i.imgur.com/EnkbeWB.png)

### Auto-suggestions

Auto-suggestions based on command history

![Auto-suggestions](https://i.imgur.com/JKCPI1i.png)

### Command validation

Real-time command validation

![Command validation](https://i.imgur.com/vTiwA5H.png)

### Directory history

Quick directory switching based on command history

![Directory history](https://i.imgur.com/JVzikH0.png)

### Git feedback

Real-time Git feedback

![Git feedback](https://i.imgur.com/Ebf32Df.png)

### Terminal multiplexing

Tmux terminal multiplexing. Split windows horizontally and vertically.

![Terminal multiplexing](https://i.imgur.com/LOXifIg.png)

### Window tabbing

Create many terminal sessions in a single window

![Window tabbing](https://i.imgur.com/7NsioKI.png)

### Nord theming

Beautiful arctic bluish Nord theming for tmux, iTerm, Gnome terminal, and neovim.

![Matching Neovim theme](https://i.imgur.com/BdtmZAP.png)

### Persistence

Session persistence across connection drops, reboots, and accidental closing.

![Persistence](https://i.imgur.com/puwjWY9.png)

## Demo

If you want to "try before you buy" you can use Vagrant to spin up a VM.

1.  Install Virtualbox  
    [Virtualbox Downloads](https://www.virtualbox.org/wiki/Downloads)
2.  Install Vagrant  
    [Vagrant Downloads](https://www.vagrantup.com/downloads.html)
3.  Initialize a Vagrantfile for Ubuntu 18.04  
    `vagrant init peru/ubuntu-18.04-desktop-amd64 --box-version 20180801.01`
4.  Start Your Ubuntu VM  
    `vagrant up`

In Virtualbox, click the "Show" button. You can now run the install command below in a destructible environment.

## Supported Platforms

Currently, the following platforms are confirmed to be supported

- Ubuntu
- Debian
- macOS
- Arch Linux
- Windows
- Raspbian

## Install

The installer will:

- Backup existing dotfiles
- Install dependencies git, curl, wget
- Install programs zsh, tmux, neovim
- Install dotfiles to `~/.dotfiles` and symbolically link them to their default locations
- Set default shell to zsh
- Load neovim plugins
- Install plugins and themes

To install, run the following commands in your terminal:

```bash
git clone https://github.com/aaronkjones/noobs-term.git
cd noobs-term
chmod +x noobs-term.sh
sh noobs-term.sh
```

Single command install:

`sh -c "$(wget -q https://raw.githubusercontent.com/aaronkjones/noobs-term/master/noobs-term.sh -O -)"`  
or  
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/aaronkjones/noobs-term/master/noobs-term.sh)"`

## Setup

> Note: You will have to log out and back in for zsh to be set as the default shell. If you don't want to log out, enter _zsh_.

### Ubuntu

1.  Press <kbd>Ctrl</kbd> + <kbd>a</kbd>, then <kbd>I</kbd> to load tmux plugins
2.  In Gnome terminal preferences, set Nord as your default profile
3.  Set an appropriate font (e.g. Inconsolata for Powerline)

### OSX

1.  Press <kbd>Ctrl</kbd> + <kbd>a</kbd>, then <kbd>I</kbd> to load tmux plugins
2.  In iTerm, set your color profile to Nord
3.  Set an appropriate font (e.g. Inconsolata for Powerline)

### Arch

1.  Press <kbd>Ctrl</kbd> + <kbd>a</kbd>, then <kbd>I</kbd> to load tmux plugins
2.  In Gnome terminal preferences, set Nord as your default profile
3.  Set an appropriate font (e.g. Inconsolata for Powerline)

### Windows

1.  Enable WSL

    **In Powershell (as Admin)**:  
    `Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux`

2.  Install Ubuntu 18.04

    From the Windows Store, search for Ubuntu 18.04

3.  Install [Scoop](https://scoop.sh/)

    `iex (new-object net.webclient).downloadstring('https://get.scoop.sh')`

    > Note: if you get an error you might need to change the execution policy (i.e. enable Powershell) with Set-ExecutionPolicy RemoteSigned -scope CurrentUser

4.  Add [Scoop Extras](https://github.com/lukesampson/scoop-extras)

    `scoop bucket add extras`

5.  Install Hyper

    `scoop install hyper`

6.  Install Font

    Download Inconsolata (or your preferred font), open, and click "Install"  
    `https://github.com/powerline/fonts/raw/master/Inconsolata/Inconsolata%20for%20Powerline.otf`

    > To install all Powerline fonts, clone the repo `https://github.com/powerline/fonts.git` and run install.ps1

7.  Set shell to wsl.exe

    **In Hyper**:  
    `chsh -s $(which zsh)`  
    In preferences (<kbd>Ctrl</kbd> + <kbd>,</kbd>), find and change shell and font settings to:

    ```powershell
    shell: 'C:\\Windows\\System32\\wsl.exe',
    shellArgs: [],
    fontFamily: 'Inconsolata for Powerline',
    ```

    > If you want, you can add the font to the beginning to retain fallback fonts (e.g. fontFamily: 'Inconsolata for Powerline','monospace',...)

8.  Install Nord-Hyper  
    In Powershell (as Admin):  
    `hyper i nord-hyper`

9.  [Install](#install) Noobs Term

## Uninstall

The uninstaller allows you to remove installed dotfiles, restore backed up dotfiles, and selectively remove installed plugins.

To uninstall, run this command in your terminal:

```bash
git clone https://github.com/aaronkjones/noobs-term.git
cd noobs-term
chmod +x noobs-term-uninstall.sh)"
sh noobs-term-uninstall.sh
```

Single command uninstall:

`sh -c "$(wget -q https://raw.githubusercontent.com/aaronkjones/noobs-term/master/noobs-term-uninstall.sh -O -)"`  
or  
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/aaronkjones/noobs-term/master/noobs-term-uninstall.sh)"`

## Key bindings

See [Keybindings.md](Keybindings.md)

## Resources

- [Awesome Tmux](https://github.com/rothgar/awesome-tmux)
- [Awesome Vim](https://github.com/akrawchyk/awesome-vim)
- [VimAwesome](https://vimawesome.com)
- [Awesome Zsh](https://github.com/unixorn/awesome-zsh-plugins)

## Contributing

Please read [CONTRIBUTING.md](https://github.com/aaronkjones/noobs-term/blob/master/CONTRIBUTING.md).
