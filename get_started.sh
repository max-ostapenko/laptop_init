# default configuration
echo "Install applications"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update && sudo apt install google-chrome-unstable

sudo snap install postman
sudo snap install slack
sudo snap install code

echo "Install CLI utilities"
sudo apt install curl whois

echo "Git"
sudo apt install git
git config --global user.email "bvz2001@gmail.com"
git config --global user.name "Max Ostapenko"

echo "Python"
sudo apt install python3
sudo apt install python3-pip

echo "Java"
sudo apt install openjdk-8-jre

# https://www.anaconda.com/distribution/#linux
cd Downloads/
bash Anaconda3-2019.10-Linux-x86_64.sh

# optional packages

echo "node.js"
sudo snap install node --channel=13/stable --classic
sudo apt install -y npm
