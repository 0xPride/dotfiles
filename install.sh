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

yay -S firefox python neovim alacritty kitty stow zathura zathura-pdf-poppler man-db man-pager bat htop neofetch ffmpeg xorg-xwayland mpv-full light-git paulseaudio alsa-lib alsa-plugins alsa-utils alsa-firmware sway swayidle swaylock waybar swappy grim wofi  gammastep slurp imv mako

# fonts
yay -S ttf-hack ttf-font-awesome ttf-mononoki nerd-fonts-mononoki
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

# zsh
yay -S zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
