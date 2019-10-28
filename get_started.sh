echo "Install applications"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update && sudo apt install google-chrome-beta

sudo apt instal vlc
sudo snap install postman

sudo snap install pycharm-community --classic

echo "Install CLI utilities"
sudo apt install curl whois

echo "Install dev untilities"
sudo apt install git
git config --global user.email "bvz2001@gmail.com"
git config --global user.name "Max Ostapenko"

sudo apt install python
sudo apt install python-pip

echo "Remove unused software"
sudo apt remove firefox


# optional packages

# node.js
sudo snap install node --channel=13/stable --classic
sudo apt install -y npm

#spark
pip install pyspark
sudo apt install openjdk-8-jre-headless
