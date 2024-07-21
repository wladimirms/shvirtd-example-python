#!/bin/bash

curl -L "https://github.com/wladimirms/shvirtd-example-python/archive/refs/heads/main.zip" -o /opt/python-backend-project/repo.zip"
unzip -j "/opt/python-backend-project/repo.zip" -d "/opt/python-backend-project"
rm /opt/python-backend-project/repo.zip

docker compose up -d