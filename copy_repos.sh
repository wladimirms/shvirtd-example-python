#!/bin/bash

sudo mkdir /opt/ython-backend-project
sudo curl -L "https://github.com/wladimirms/shvirtd-example-python/archive/refs/heads/main.zip" -o /opt/python-backend-project/repo.zip
sudo apt install -y unzip
sudo unzip -j /opt/python-backend-project/repo.zip -d /opt/python-backend-project
sudo rm /opt/python-backend-project/repo.zip

sudo docker compose up -d