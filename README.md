# Axer-Zsh

The Zsh config files that I use on all of my linux systems.

## Notice

This config is only tested on Linux, and is not guaranteed to work in any other operating system.

This config uses 'Shift+Enter' for some key-bindings. [Ensure your terminal emulator is configured to support this.](https://stackoverflow.com/questions/16359878/how-to-map-shift-enter)

Some programs, like many desktop environments, only look for Zsh config files in `$HOME`. I would recommend creating sylinks to `$ZDOTDIR/.zshrc` and `$ZDOTDIR/.zshenv` in `$HOME` if you run into any issues.

## Installation

* Install [Zsh.](https://www.zsh.org/)
* Set Zsh as your user's [default shell.](https://wiki.archlinux.org/title/Zsh#Making_Zsh_your_default_shell)
* Ensure that the `ZDOTDIR` environment variable is set to `$HOME/.config/zsh/`.
* Clone this repository to `$HOME/.config/zsh/`.
```sh
git clone https://github.com/axertheaxe/axer-zsh.git $ZDOTDIR
```
* Re-source your shell.
```sh
source $ZDOTDIR/.zshrc
```

## License

This project is public domain. See [LICENSE](LICENSE) for more information.
