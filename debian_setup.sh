#em produção
#script pra debian com gnome

### Atualizaçoes/Instalações do sistema

sudo apt update && sudo apt upgrade -y

#pra codar
sudo apt install build-essential gcc vim git cmake zsh -y

#util
sudo apt install wget curl nmap net-tools ncdu btop openjdk-17-jdk vlc pkg-config -y

#python
sudo apt install python3 python3-pip python3-numpy python3-dev -y

#customizacao
sudo apt install gnome-shell-extension-manager -y

#meme
sudo apt install neofetch sl lolcat tldr cowsay -y

#snaps
sudo apt install snapd
sudo systemctl enable --now snapd.socket

#snaps --classic
sudo snap install codium --classic  

#snaps
sudo snap install discord onlyoffice-desktopeditors

#--------------------------------------------------------------------
### Configuracoes do sistema:

#dark mode
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

#tela
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

#som do sistema desabilitado
gsettings set org.gnome.desktop.sound event-sounds false

#desabilita animação
gsettings set org.gnome.desktop.interface enable-animations false

# Fontes
cd Downloads/
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Hack.zip
unzip Hack.zip -d MyFonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Ubuntu.zip
unzip Ubuntu.zip -d MyFonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/UbuntuMono.zip
unzip UbuntuMono.zip -d MyFonts
sudo cp -r MyFonts /usr/share/fonts/truetype/
sudo fc-cache -f -v
gsettings set org.gnome.desktop.interface font-name 'Ubuntu Nerd Font Regular 11'
gsettings set org.gnome.desktop.interface document-font-name 'Hack Nerd Font 12'
gsettings set org.gnome.desktop.interface monospace-font-name 'UbuntuMono Nerd Font Regular 13'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Ubuntu Nerd Font Bold 11'


#install kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
sudo ln -s ~/.local/kitty.app/bin/kitty /usr/local/bin/
sudo ln -s ~/.local/kitty.app/bin/kitty /usr/local/bin/sudo 

# Add the custom shortcut for kitty
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "Launch Kitty"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "kitty"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "<Primary><Alt>K"


sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"