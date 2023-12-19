#Gerar chave ssh par o github

#usar como: ./github_ssh.sh your_email@example.com

if [ $# -eq 0 ]; then
  echo "Para usar: $0 <your_email@example.com>"
  exit 1
fi

email=$1

#gera chave
ssh-keygen -t ed25519 -C "$email"

#adiciona no ssh-agent
ssh-add ~/.ssh/id_ed25519

#printa a chave publica
clear

echo "copie a chave publica e cole no github:"

cat ~/.ssh/id_ed25519.pub