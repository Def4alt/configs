#!/bin/bash

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
)

yay -S --noconfirm --needed ${PKGS[@]}

export PATH=$PATH:~/.local/bin

cd ~
git clone "https://github.com/Def4alt/configs"

pip install konsave
konsave -i ~/configs/default.knsv
sleep 1
konsave -a default

ln -s ~/configs/config.fish ~/.config/fish/config.fish
ln -s ~/configs/init.vim ~/.config/nvim/init.vim

echo -e "\nDone\n"
exit
