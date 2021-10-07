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

printf "\n\n"

sudo pacman -Syu
sudo pacman -Syy

git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay
makepkg -si
cd ~/Dotefiles

yay -S zsh python neovim neovide alacritty kitty awesome stow feh

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
printf "\n\n"

# node version manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash 
printf "\n\n"

# lunar vim
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
printf "\n\n"

# neovide luncher 
echo '#!/bin/sh

export LUNARVIM_CONFIG_DIR="${LUNARVIM_CONFIG_DIR:-$HOME/.config/lvim}"
export LUNARVIM_RUNTIME_DIR="${LUNARVIM_RUNTIME_DIR:-$HOME/.local/share/lunarvim}"
export LUNARVIM_CACHE_DIR="${LUNARVIM_CACHE_DIR:-$HOME/.cache/lvim}"

exec neovide -- -u "$LUNARVIM_RUNTIME_DIR/lvim/init.lua" "$@"' > ~/.local/bin/lvim-gui
chmod +x ~/.local/bin/lvim-gui


stow */
feh --bg-scale ~/Pictures/Wallpapers/1109233.jpg
