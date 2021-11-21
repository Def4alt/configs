#!/usr/bin/env bash

echo "Installing yay"
cd ~
git clone "https://aur.archlinux.org/yay.git"
cd ~/yay
makepkg -si --noconfirm

PKGS=(
	'brave-bin'
	'dxvk-bin'
	'nerd-fonts-fira-code'
	'corectrl'
	'spotify'
)

yay -S --noconfirm --needed ${PKGS[@]}

export PATH=$PATH:~/.local/bin

pip install konsave
konsave -i ~/configs/default.knsv
sleep 1
konsave -a default

mkdir ~/.config/fish/
ln -s ~/configs/config.fish ~/.config/fish/config.fish -f
ln -s ~/configs/init.vim ~/.config/nvim/init.vim -f

echo -e "\nDone\n"
exit
