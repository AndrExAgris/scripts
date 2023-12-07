#em produção
#script pra debian com gonome

### Configuracoes do sistema:

#dark mode
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.desktop.interface color-scheme'prefer-dark'

#tela
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

#som do sistema desabilitado
gsettings set org.gnome.desktop.sound event-sounds false

# Fontes
gsettings set org.gnome.desktop.interface font-name 'Arial 11'
gsettings set org.gnome.desktop.interface monospace-font-name 'DejaVu Sans Mono 11'




sudo apt update && sudo apt upgrade -y

#snaps --classic
sudo snap install code --classic  

#snaps
sudo snap install discord onlyoffice-desktopeditors

#python
sudo apt install python3-pip python3-numpy python3-dev -y

#customizacao
sudo apt install font-manager gnome-tweaks gnome-shell-extension-manager -y

#meme
sudo apt install neofetch sl lolcat tldr cowsay -y
pip install git+https://github.com/will8211/unimatrix.git

#util
sudo apt install wget curl nmap net-tools ncdu btop openjdk-17-jdk vlc pkg-config -y

#pra codar
sudo apt install build-essential gcc vim git cmake zsh -y



sudo apt purge imagemagick imagemagick-6-common -y
sudo apt autoremove -y  && sudo apt autoclean

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
sudo ln -s ~/.local/kitty.app/bin/kitty /usr/local/bin/
sudo ln -s ~/.local/kitty.app/bin/kitty /usr/local/bin/sudo ln -s ~/.local/kitty.app/bin/kitty /usr/local/bin/sudo ln -s ~/.local/kitty.app/bin/kitty /usr/local/bin/sudo ln -s ~/.local/kitty.app/bin/kitty /usr/local/bin/n
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Hack.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Ubuntu.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/UbuntuMono.zip

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"