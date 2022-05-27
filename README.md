# MyDotfiles
## Installation
```
wget https://raw.githubusercontent.com/omertahaoztop/MyDotfiles/main/bspwm.sh
wget https://raw.githubusercontent.com/omertahaoztop/MyDotfiles/main/packages.sh
bash bspwm.sh
bash packages.sh
```
### 
And Check This;
https://agrimprasad.com/post/supercharge-kubernetes-setup/
And Install AstroNvim,Tmux,Mutt,Stern
## Need Run this commands before & after install
### NOTE: Edit packages.sh for Graphics card and bspwmrc for monitor
```
sudo pacman -S archlinux-keyring
sudo pacman -S reflector rsync curl
sudo reflector --latest 20 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Rdd picom-ibhagwan-git
# After installation
bash
permit nopass omertahaoztop as root >> /etc/doas.conf
```
