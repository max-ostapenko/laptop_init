# default configuration
echo "Install applications"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update && sudo apt install google-chrome-unstable

sudo snap install postman
sudo snap install slack
sudo snap install code

echo "Git"
sudo apt install git
git config --global user.email "bvz2001@gmail.com"
git config --global user.name "Max Ostapenko"

echo "Python"
sudo apt install python3-pip

echo "Java"
sudo apt install openjdk-13-jre-headless

# https://www.anaconda.com/distribution/#linux
cd Downloads/
wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
bash Anaconda3-2020.02-Linux-x86_64.sh

# optional packages

echo "node.js"
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs
