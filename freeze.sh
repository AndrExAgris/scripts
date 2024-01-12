#copia o usuario aluno para uma pasta privada

sudo rsync -a /home/aluno/ /opt/.aluno_backup


#cria um script chamado freeze em /etc/init.d/

touch /etc/init.d/freeze

echo >> "rm -rf /home/aluno"
echo >> "rsync -az /opt/.aluno_backup/ /home/aluno"
echo >> "chown -R aluno: /home/aluno"

chmod +x /etc/init.d/freeze


#adiciona no runtime

ln -s /etc/init.d/freeze /etc/rc3.d/S10freeze
ln -s /etc/init.d/freeze /etc/rc5.d/S10freeze

/etc/init.d/freeze start
