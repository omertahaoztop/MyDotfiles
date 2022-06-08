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
### And edit on polybar directory system & bspwmrc for monitor
```
sudo pacman -S archlinux-keyring
sudo pacman -S reflector rsync curl
sudo reflector --latest 20 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Rdd picom-ibhagwan-git
# After installation
bash
permit nopass omertahaoztop as root >> /etc/doas.conf
sudo pacman -S libxcrypt-compat 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## Zshrc-personal
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim +PackerSync
sudo su
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim +PackerSync
echo alias kctx="kubectx" >> ~/.zshrc-personal
alias kns="kubens" >> ~/.zshrc-personal
alias k="kubectl" >> ~/.zshrc-personal
mkdir -p ~/.oh-my-zsh/completions
chmod -R 755 ~/.oh-my-zsh/completions
ln -s /opt/kubectx/completion/kubectx.zsh ~/.oh-my-zsh/completions/_kubectx.zsh
ln -s /opt/kubectx/completion/kubens.zsh ~/.oh-my-zsh/completions/_kubens.zsh
brew install kube-ps1
source "/home/linuxbrew/.linuxbrew/opt/kube-ps1/share/kube-ps1.sh" >> .zshrc
PS1='$(kube_ps1)'$PS1
brew install stern
brew install thefuck
eval $(thefuck --alias) >> .zshrc
sudo npm install -g undollar
```
