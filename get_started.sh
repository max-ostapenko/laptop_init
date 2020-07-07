# Applications
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

sudo apt install docker.io

# Python
pip install --user virtualenv
pip install --user pipenv

# NodeJS
echo "node.js"
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs
