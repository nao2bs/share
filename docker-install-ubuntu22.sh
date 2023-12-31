# !/bin/sh

echo "##################"
echo "Remove Old Version"
echo "##################"
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update

echo "##################"
echo "Install Dcoker"
echo "##################"

sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg


echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

sudo usermod -aG docker `echo $USER`

#reconnect
echo "##################"
echo "Hello Dcoker"
echo "Please reconnect."
echo "##################"
