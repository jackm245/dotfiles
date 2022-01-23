
# Dotfiles

Jack Morgan's Dotfiles

## Table of Contents

- [Config](#config)
- [Description](#Description)
- [Programs](#Programs)
- [Dotfiles Maintenance](#How-these-dotfiles-are-maintained)
- [Contributing](#Contributing)


## Description

* Focus on **shortcuts**
* High **usability** and **performance**
* **Optimized** for a 60% keyboard on a **laptop**
* **Low resources** used
* **Fonts**: [DejaVu Sans Mono Nerd Font](https://www.nerdfonts.com/).
* **Colors and palette**: [Onedark Theme](https://github.com/navarasu/onedark.nvim)
* Designed for [Artix Linux](https://artixlinux.org/)

## Programs

- **WM**                            : [dwm](https://dwm.suckless.org/)
- **Init System**                   : [runit](http://smarden.org/socklog/)
- **Shell**                         : [bash](https://wiki.archlinux.org/index.php/zsh)
- **Terminal**                      : [st](https://st.suckless.org/)
- **Bar**                           : [slstatus](https://tools.suckless.org/slstatus/)
- **Compositor**                    : [Picom Jonaburg](https://github.com/jonaburg/picom)
- **Text Editor**                   : [jvim](https://github.com/jackm245/jvim)
- **Wallpaper Manager**             : [paperview](https://github.com/glouw/paperview)
- **Notify Daemon**                 : [dunst](https://wiki.archlinux.org/index.php/Dunst)
- **File Manager**                  : [lf](https://github.com/gokcehan/lf)
- **Application Launcher**          : [dmenu](https://tools.suckless.org/dmenu/)
- **System Monitor**                            : [gotop](https://github.com/cjbassi/gotop)
- **Browser**                            : [qutebrowser](https://qutebrowser.org/)

## How these dotfiles are maintained

To maintain these dotfiles I created a bare git repository following [Atlassian's Tutorial](https://www.atlassian.com/git/tutorials/dotfiles)

1. Create a .config file - which is a bare Git repository - that will track the dotfiles.
```bash
git init --bare $HOME/.cfg
```
2. Create  config alias that is used to specifically interact with the dotfiles repository.
```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```
3. Set a flag to hide the files we are not explicitly tracking
```bash
config config --local status.showUntrackedFiles no
```
4. Add the alias definition to your .bashrc or use this line provided for convenience.
```bash
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```
These dotfiles can then my updated using git, but by using the config command
```bash
config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push
```


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

