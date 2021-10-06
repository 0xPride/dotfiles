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

printf "updating"
sudo pacman -Syu
sudo pacman -Syy

printf "Installing zsh"
yay -S zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
printf "\n\n"

printf "Installing YAY"
git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay; makepkg-si; cd
printf "\n\n"

printf "Installing Python"
yay -S python
printf "\n\n"

printf "Installing NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash 
printf "\n\n"

printf "Installing Neovim"
yay -S neovim
printf "\n\n"

printf "Installing LunarVim"
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
printf "\n\n"

printf "Installing Neovide"
yay -S neovide
echo '#!/bin/sh

export LUNARVIM_CONFIG_DIR="${LUNARVIM_CONFIG_DIR:-$HOME/.config/lvim}"
export LUNARVIM_RUNTIME_DIR="${LUNARVIM_RUNTIME_DIR:-$HOME/.local/share/lunarvim}"
export LUNARVIM_CACHE_DIR="${LUNARVIM_CACHE_DIR:-$HOME/.cache/lvim}"

exec neovide -- -u "$LUNARVIM_RUNTIME_DIR/lvim/init.lua" "$@"' > ~/.local/bin/lvim-gui
chmod +x ~/.local/bin/lvim-gui

printf "Installing Alacritty"
yay -S alacritty
printf "\n\n"

printf "Installing Kitty"
yay -S kitty
printf "\n\n"

printf "Installing AwesomeWM"
yay -S awesome
printf "\n\n"

printf "Installing Gnu Stow"
yay -S stow
printf "\n\n"

printf "Installing Wine And Lutris"
yay -S wine lutris
printf "\n\n"

printf "Installing Wine And Lutris"
yay -S feh
printf "\n\n"

stow */
feh --bg-scale ~/Pictures/Wallpapers/1109233.jpg
