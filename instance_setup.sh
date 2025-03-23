#!/bin/bash
sudo apt update -y
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
docker run -d -p 5000:5000 flask-app
