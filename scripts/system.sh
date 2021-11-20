#!/bin/bash

PKGS=(
	'github-cli'
	'python-pip'
	'fish'
	'wine-gecko'
	'wine-mono'
	'winetricks'
	'lutris'
)

pacman -S --noconfirm --needed ${PKGS[@]}

sh -c "$(curl -fsSL https://starship.rs/install.sh)"

exit
