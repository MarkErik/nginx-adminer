# Running Adminer with HTTPS behind proxy and password
For Ubunut 18.04 LTS, to connect to databases running on the remote machine.
Assuming docker, docker-compose already installed.
User account with sudo permissions.

## Step 1: Install the htpasswd utility to generate the password
sudo apt-get update
sudo apt-get install apache2-utils

## Step 2: close this repo
