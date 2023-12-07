#Imagem dos pcs do BCC 2023
###########################

#atualiza e configura o ubuntu
sudo apt update && sudo apt upgrade -y
sudo ufw disable



#instala e configura snaps
echo "-----------basicos----------------------------------------------"
sudo snap install curl

echo "-----------visual-studio-code-----------------------------------"
sudo snap install code --classic

echo "-----------coq prof---------------------------------------------"
sudo snap install coq-prover

echo "-----------arduino----------------------------------------------"
sudo snap install arduino

echo "-----------android studio---------------------------------------"
sudo snap install android-studio --classic

echo "-----------eclipse----------------------------------------------"
sudo snap install eclipse --classic

echo "-----------netbeans---------------------------------------------"
sudo snap install netbeans --classic

echo "-----------intellij---------------------------------------------"
sudo snap install intellij-idea-community --classic


#instala e configura aplicacoes

echo "-----------basicos----------------------------------------------"
sudo apt install build-essential vim git cmake wget curl gnupg2 software-properties-common apt-transport-https ca-certificates lsb-release -y

echo "-----------utilitarios-----------------------------------------------------------"
sudo apt install neofetch nmap ncdu sl net-tools lolcat htop tldr cowsay btop nnn -y


echo "--------------inetutils-----------------------------------------------------------"
sudo apt install inetutils-*

echo "-----------python-e-packs---------------------------------------"
sudo apt install python3-pip python3-opencv python3-dev python3-numpy python3-gi python3-gi-cairo gir1.2-gtk-3.0 libgirepository1.0-dev libcairo2-dev pkg-config python3-dev gir1.2-gtk-3.0 -y
sudo apt install spyder -y && sudo python3 -m pip install --upgrade spyder
sudo pip3 install Pyro4 matplotlib pandas howdoi numpy Django djangorestframework Scipy gobject jupyterlab pycairo PyGObject

echo "-----------bibliotecas------------------------------------------"
sudo apt install libgtk-3-dev libsdl2-dev libglu1-mesa-dev freeglut3-dev mesa-common-dev -y
sudo apt install libopencv-dev python3-opencv -y
sudo apt install vulkan-tools libvulkan-dev vulkan-validationlayers-dev spirv-tools libglfw3-dev libglm-dev libxi-dev libxxf86vm-dev libstb-dev libglu1-mesa-dev -y
sudo apt install libsdl1.2-dev

sudo apt-get install bonnie++ dbench emacs-gtk iozone3 iperf manpages-posix manpages-posix-dev netperf r-cran-car r-cran-rmarkdown r-cran-tidyverse r-cran-tufte screen tmux vim


echo "-----------compiladores-----------------------------------------"
sudo apt install gcc clang llvm lld -y

echo "-----------ssh--------------------------------------------------"
sudo apt install openssh-server -y
sudo sed -i 's/#PasswordAuthentication/PasswordAuthentication/g' /etc/ssh/sshd_config

echo "-----------java-------------------------------------------------"
sudo apt install openjdk-17-jdk -y

echo "-----------codeblocks-------------------------------------------"
sudo apt install codeblocks -y

echo "-----------ghc--------------------------------------------------"
sudo apt install ghc -y

echo "-----------virtual-box------------------------------------------"
sudo apt install virtualbox -y

echo "-----------opem-mpi---------------------------------------------"
sudo apt install openmpi-bin libopenmpi-dev -y

echo "-----------wireshrk--------------------------------------------------------------"
sudo apt install wireshark -y
sudo chmod +x /usr/bin/dumpcap
 
echo "-----------Bison------------------------------------------------"
sudo apt install bison -y

echo "-----------Flex-------------------------------------------------"
sudo apt install flex -y

echo "-----------PDF-Presenter-Console--------------------------------"
sudo apt install pdf-presenter-console -y

echo "-----------Spin-------------------------------------------------"
sudo apt install spin -y

echo "-----------Chaosreader------------------------------------------"
sudo apt install chaosreader -y

echo "-----------Apache-----------------------------------------------"
sudo apt install apache2 -y

echo "-----------libreoffce-------------------------------------------"
sudo apt install libreoffice -y

echo "-----------Data Display Debugger--------------------------------"
sudo apt install ddd -y

echo "-----------firewall builder ------------------------------------"
sudo apt install fwbuilder -y

echo "-----------geany------------------------------------------------"
sudo apt install geany -y

echo "-----------ruby-------------------------------------------------"
sudo apt install ruby -y

echo "-----------gimp-------------------------------------------------"
sudo apt install gimp -y

echo "-----------screen-copy------------------------------------------"
sudo apt install scrcpy -y

#repos adicionais ou temporarios
echo "-----------ocamel-----------------------------------------------"
sudo add-apt-repository ppa:avsm/ppa -y && sudo apt update
sudo apt install opam -y
sudo add-apt-repository ppa:avsm/ppa --remove -y && sudo apt update

echo "-----------postgress-PGadmin-----------------------------------"  
sudo apt install postgresql postgresql-contrib -y
curl  -fsSL https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/pgadmin.gpg
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list'
sudo apt update
sudo apt install pgadmin4-desktop -y

echo "-----------mongo------------------------------------------------"
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_amd64.deb
sudo apt install -f ./libssl1.1_1.1.0g-2ubuntu4_amd64.deb -y

wget https://repo.mongodb.org/apt/ubuntu/dists/focal/mongodb-org/6.0/multiverse/binary-amd64/mongodb-org-server_6.0.3_amd64.deb
sudo apt install -f ./mongodb-org-server_6.0.3_amd64.deb -y

wget https://downloads.mongodb.com/compass/mongodb-compass_1.34.1_amd64.deb
sudo apt install -f ./mongodb-compass_1.34.1_amd64.deb -y

sudo sed -i '/^\[Service\].*/a Restart=always' /lib/systemd/system/mongod.service
sudo systemctl daemon-reload
sudo systemctl enable mongod.service

echo "--------------anydesk-------------------------------------------"
wget https://download.anydesk.com/linux/anydesk_6.2.1-1_amd64.deb
sudo apt install -f ./anydesk_6.2.1-1_amd64.deb -y

echo "-----------qtsim------------------------------------------------"
wget https://sourceforge.net/projects/spimsimulator/files/qtspim_9.1.22_linux64.deb
sudo apt install -f ./qtspim_9.1.22_linux64.deb

echo "-----------R----------------------------------------------------"
sudo apt install r-base -y
wget https://download1.rstudio.org/desktop/jammy/amd64/rstudio-2022.07.2-576-amd64.deb
sudo apt install -f ./rstudio-2022.07.2-576-amd64.deb -y

echo "-----------mars-------------------------------------------------"
wget https://courses.missouristate.edu/KenVollmar/mars/MARS_4_5_Aug2014/Mars4_5.jar
sudo chmod +x Mars4_5.jar 
sudo mkdir /opt/mars/
sudo chmod 777 -R /opt/mars
sudo cp Mars4_5.jar /opt/mars
sudo touch /opt/mars/Mars.desktop
sudo chmod 777 /opt/mars/Mars.desktop
echo "[Desktop Entry]" | tee /opt/mars/Mars.desktop
echo "Name=Mars" | tee /opt/mars/Mars.desktop -a
echo "Exec=java -jar /opt/mars/Mars4_5.jar" | tee /opt/mars/Mars.desktop -a
echo "Terminal=false" | tee /opt/mars/Mars.desktop -a
echo "Type=Application" | tee /opt/mars/Mars.desktop -a
echo "Actions=new-window;new-private-window;" | tee /opt/mars/Mars.desktop -a
sudo mv /opt/mars/Mars.desktop /usr/share/applications/
sudo chmod 644 /usr/share/applications/Mars.desktop

echo "-----------xaamp------------------------------------------------"
sudo apt install apache2 -y
sudo apt install curl -y
sudo apt install mysql-server -y
sudo apt install php libapache2-mod-php php-mysql -y
sudo chmod 777 -R /var/www

echo "-----------microchip--------------------------------------------"
wget https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/MPLABX-v6.05-linux-installer.tar
tar -xf MPLABX-v6.05-linux-installer.tar
sudo ./MPLABX-v6.05-linux-installer.sh
#Microchip compiladores
wget https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/xc8-v2.40-full-install-linux-x64-installer.run
sudo chmod +x xc8-v2.40-full-install-linux-x64-installer.run
sudo ./xc8-v2.40-full-install-linux-x64-installer.run
wget https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/xc16-v2.00-full-install-linux64-installer.run
sudo chmod +x xc16-v2.00-full-install-linux64-installer.run
sudo ./xc16-v2.00-full-install-linux64-installer.run
wget https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/xc32-v4.20-full-install-linux-x64-installer.run
sudo chmod +x xc32-v4.20-full-install-linux-x64-installer.run
sudo ./xc32-v4.20-full-install-linux-x64-installer.run

echo "-----------driver-aduino----------------------------------------"
wget https://github.com/juliagoda/CH341SER/archive/refs/heads/master.zip
unzip master.zip 
cd CH341SER-master/
sudo make
sudo make load
cd ..


#################
sudo apt install synaptic -y
#################

echo "----------------------------------------------------------"
sudo apt-get install glslang-tools
git clone https://github.com/tinyobjloader/tinyobjloader
cd tinyobjloader
cmake .
make ; sudo make install


echo "------------açoes após rodar o script-------------------"
echo "- instalar extensões do vscode C/C++, python, remote SSH, java, portugues"
echo "- alterar senha do root para o mysql"
echo "sudo mysql"
echo "CREATE USER 'udesc'@'%' IDENTIFIED BY 'udesc';"
echo "GRANT ALL PRIVILEGES ON *.* TO 'udesc'@'%' WITH GRANT OPTION;"
echo "-----------postgres senha--------------------------------------------------------------"
echo "su" # entrar como root
echo "su - postgres" # como root
echo "psql"
echo "alter user postgres with password 'udesc';"
#su postgres -c 'psql -c "alter user postgres with password \'udesc\'"'
echo "-------------configurar aondroid----------------------"
echo "criar pasta publica /opt/android_studio permissao 777"
echo "--------------como usuario udesc---------------------"
echo "ssh-keygen"
echo "cat .ssh/id_rsa.pub > .ssh/authorized_keys"
echo "desabilitar anydesk da inicialização rodar gnome-session-propl