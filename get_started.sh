#!/usr/bin/env bash

if [[ "$OSTYPE" == darwin* ]]; then
    echo "Starting MAC initialisation..."

    read -p "Install GIT? y/n [n]: " git
    if [[ "${git:-n}" == "y" ]]; then
        brew install git
    fi

    read -p "Install Node.js? y/n [n]: " node
    if [[ "${node:-n}" == "y" ]]; then
        brew install node
    fi

elif [[ "$OSTYPE" == linux* ]]; then
    echo "Starting LINUX initialisation..."

    read -e -p "Install Google Chrome Unstable? y/n [y]: " -i "y" google-chrome-unstable
    if [[ "$google-chrome-unstable" == "y" ]]; then
        wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
        sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
        sudo apt update && sudo apt install google-chrome-unstable
    fi

    read -e -p "Install VS Code Insiders? y/n [y]: " -i "y" code-insiders
    if [[ "$code-insiders" == "y" ]]; then
        sudo snap install code-insiders
    fi

    read -e -p "Install Postman? y/n [y]: " -i "y" postman
    if [[ "$postman" == "y" ]]; then
        sudo snap install postman
    fi

    read -e -p "Install Slack? y/n [y]: " -i "y" slack
    if [[ "$slack" == "y" ]]; then
        sudo snap install slack
    fi

    read -e -p "Install Docker? y/n [y]: " -i "y" docker
    if [[ "$docker" == "y" ]]; then
        sudo apt install docker.io
    fi

    read -e -p "Install Git? y/n [y]: " -i "y" git
    if [[ "$git" == "y" ]]; then
        sudo apt install git
    fi

    read -e -p "Install Node.js? y/n [y]: " -i "y" node
    if [[ "$node" == "y" ]]; then
        curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
        sudo apt-get install -y nodejs
    fi

fi

if [[ "$git" == "y" ]]; then
    echo "Configuring Git..."
    read -p "Gihub developer email: " email
    git config --global user.email $email
    read -p "Gihub developer email: " name
    git config --global user.name $name
    git config --global credential.helper 'cache --timeout=2592000'
fi

read -e -p "Install Python environments? y/n [n]: " py_config
if [[ "${py_config:-n}" == "y" ]]; then
    python3 -m pip install --upgrade --user -q pipenv
    #python3 -m pip install --user virtualenv
fi
