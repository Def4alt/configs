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
	'telegram-desktop'
	'discord'
	'htop'
	'plasma-wayland-session'
)

pacman-mirrors --fasttrack 5 && pacman -Syyu
pacman -S --noconfirm --needed ${PKGS[@]}

PKGS_TO_REMOVE=(
	'qt5-tools'
	'firefox'
	'yakuake'
)

pacman -Rs --noconfirm ${PKGS_TO_REMOVE[@]}

sh -c "$(curl -fsSL https://starship.rs/install.sh)"


exit
