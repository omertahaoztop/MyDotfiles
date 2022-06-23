#!/bin/bash
## Update packages and Upgrade System ##
sudo pacman -Syyuu
## Git and Development Tools ##
sudo pacman -S --noconfirm git base-devel fakeroot jshon expac wget rsync curl
## Kubernetes Tools ##
sudo pacman -S  --noconfirm kubectl k9s kubectx
## Browsers## 
sudo pacman -S --noconfirm chromium firefox
## Bat & exa ##
sudo pacman -S --noconfirm bat exa
## DOAS ##
sudo pacman -S --noconfirm doas
## Vulkan API For gaming ##
sudo pacman -S --needed --noconfirm lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader
## Wine Dependencies and Lutris ##
sudo pacman -S --needed --noconfirm giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls \
	mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error \
	lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo \
	sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama \
	ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 \
	lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader
## Utilities ##
sudo pacman -S --noconfirm vlc python-pip gnome-disk-utility vlc qbittorrent 
## AUR Packages ##
paru -S telegram-desktop-bin visual-studio-code-bin whatsapp-nativefier
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim +PackerSync
