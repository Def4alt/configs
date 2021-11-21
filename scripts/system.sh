#!/bin/bash

PKGS=(
	'steam'
	'code'
	'vim'
	'github-cli'
	'python-pip'
	'fish'
	'wine-gecko'
	'wine-mono'
	'winetricks'
	'lutris'
	'neovim'
)

pacman-mirrors --fasttrack 5 && pacman -Syyu
pacman -S --noconfirm --needed ${PKGS[@]}

sh -c "$(curl -fsSL https://starship.rs/install.sh)"


exit
