#!/bin/bash

echo "
╱╱╱╱╱╱╱╱╭╮╱╱╱╭╮╱╱╱╱╱╱╱╱╱╱╱╱╱╱╭╮
╱╱╱╱╱╱╱╱┃┃╱╱╱┃┃╱╱╱╱╱╱╱╱╱╱╱╱╱╱┃┃
╭╮╭┳━━┳━╯┣━━╮┃╰━┳╮╱╭╮╭━━┳━┳┳━╯┣━━╮
┃╰╯┃╭╮┃╭╮┃┃━┫┃╭╮┃┃╱┃┃┃╭╮┃╭╋┫╭╮┃┃━┫
┃┃┃┃╭╮┃╰╯┃┃━┫┃╰╯┃╰━╯┃┃╰╯┃┃┃┃╰╯┃┃━┫
╰┻┻┻╯╰┻━━┻━━╯╰━━┻━╮╭╯┃╭━┻╯╰┻━━┻━━╯
╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╭━╯┃╱┃┃
╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╰━━╯╱╰╯"

sudo pacman -Syu
sudo pacman -Syy

git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay
makepkg -si
cd ~/Dotefiles

yay -S zsh firefox python neovim neovide alacritty kitty stow feh picom rofi zathura zathura-pdf-poppler man-db man-pager bat scrot htop neofetch ffmpeg xorg-xrdb mpv-full qbittorrent light-git paulseaudio alsa-lib alsa-plugins alsa-utils alsa-firmware sway swayidle swaylock waybar swappy grim wofi nerd-fonts-mononoki gammastep slurp imv mako

# fonts
yay -S ttf-hack ttf-font-awesome ttf-mononoki
# node version manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash 

# lunar vim
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

# neovide luncher 
echo '#!/bin/sh

export LUNARVIM_CONFIG_DIR="${LUNARVIM_CONFIG_DIR:-$HOME/.config/lvim}"
export LUNARVIM_RUNTIME_DIR="${LUNARVIM_RUNTIME_DIR:-$HOME/.local/share/lunarvim}"
export LUNARVIM_CACHE_DIR="${LUNARVIM_CACHE_DIR:-$HOME/.cache/lvim}"

exec neovide -- -u "$LUNARVIM_RUNTIME_DIR/lvim/init.lua" "$@"' > ~/.local/bin/lvim-gui
chmod +x ~/.local/bin/lvim-gui

stow ~/Dotefiles/*/

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# TODO: setup dunst
