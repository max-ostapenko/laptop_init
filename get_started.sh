# default configuration
echo "Install applications"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update && sudo apt install google-chrome-unstable

sudo snap install code-insiders
sudo snap install postman
sudo snap install slack

sudo apt install git
git config --global user.email "bvz2001@gmail.com"
git config --global user.name "Max Ostapenko"
git config --global credential.helper 'cache --timeout=2592000'

# https://www.anaconda.com/distribution/#linux
wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
bash ~/Downloads/Anaconda3-2020.02-Linux-x86_64.sh

pip install pyre-check
pip install -U bandit
pip install -U pylama
pip install -U black

sudo apt install docker.io

# optional packages
echo "node.js"
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs
