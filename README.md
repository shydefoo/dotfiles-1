# Dotfiles

_personal dotfiles & quick machine setup scripts, blatently stolen from MarkHershey's repo [here](https://github.com/MarkHershey/dotfiles)_

![](https://github.com/shydefoo/dotfiles/workflows/Shellcheck/badge.svg?branch=master)
![](https://github.com/shydefoo/dotfiles/workflows/CI-ubuntu/badge.svg?branch=master)
![](https://github.com/shydefoo/dotfiles/workflows/CI-ubuntu-curl/badge.svg?branch=master)
![](https://github.com/shydefoo/dotfiles/workflows/CI-macOS/badge.svg?branch=master)

---

## Install

To run automated dotfile-install script for Ubuntu & macOS, choose either:

-   Bootstrap Install w/ Git

    ```bash
    $ git clone https://github.com/shydefoo/dotfiles-1.git dotfiles
    $ cd dotfiles
    $ ./install
    ```

-   Bootstrap Install w/ Curl

    ```bash
    $ bash -c "$(curl -fsSL https://raw.githubusercontent.com/shydefoo/dotfiles/master/curl_install)"
    ```

## Configurations

-   [`git/gitconfig`](git/gitconfig) contains git user information. Please set email address accordingly.
-   [`macos/macOS_custom_setup.sh`](macos/macOS_custom_setup.sh) Line 105-115 contains language & timezone settings for macOS.

## Try it in Docker

-   Build image from source

    ```bash
    $ git clone https://github.com/MarkHershey/dotfiles.git
    $ cd dotfiles
    $ docker build -t ubuntu-dev .
    ```

-   Run local image

    ```bash
    $ docker run -it ubuntu-dev
    ```

-   Alternatively, run the pre-built image

    ```bash
    $ docker run -it --rm markhersheydev/ubuntu-dev
    ```

## What is included?

-   `zsh`
    -   Plugin Manager
        -   [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
    -   Built-in Plugins
        -   [git](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git)
        -   [tmux](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmux)
        -   [sudo](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sudo)
        -   [docker](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker)
        -   [colorize](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colorize)
        -   [command-not-found](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/command-not-found)
    -   Custom Plugins
        -   [zsh-completions](https://github.com/zsh-users/zsh-completions)
        -   [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
    -   Theme
        -   [starship](https://starship.rs/)
-   [`tmux`](https://github.com/tmux/tmux/wiki)
-   [`vim`](https://www.vim.org/)
-   [`neovim`](https://neovim.io/)
    -   Plugins
        -   [vim-awesome](https://github.com/shydefoo/vimrc)

- [Fonts](./fonts) 
  - use fonts in *_nerd_font for vim-devicons to show up
