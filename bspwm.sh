#!/bin/bash
sudo pacman -Syu --needed git base-devel
git clone https://aur.archlinux.org/paru-bin.git
cd paru-bin && makepkg -si
paru -S alacritty ttf-material-design-iconic-font  bspwm sxhkd feh polybar xorg-xsetroot xorg-xbacklight light pamixer picom-jonaburg-git dunst rofi flameshot ksuperkey nerd-fonts-jetbrains-mono polkit-gnome fm6000 network-manager-applet helix xfce4-power-manager betterlockscreen zsh zsh-autosuggestions zsh-syntax-highlighting oh-my-zsh-git catppuccin-gtk-theme papirus-icon-theme --needed --noconfirm
git clone https://github.com/omertahaoztop/MyDotfiles 
cd MyDotfiles
\cp -R .config/* ~/.config/
chmod -R +x ~/.config/bspwm
\cp .zshrc ~
\cp .zshrc-personal ~
mkdir ~/.local/bin
\cp -R .local/bin/* ~/.local/bin
\chmod -R +x ~/.local/bin
betterlockscreen -u ~/.config/bspwm/backgrounds/evening-sky.png
sudo systemctl enable betterlockscreen@$USER.service

