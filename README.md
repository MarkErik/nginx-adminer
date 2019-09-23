# Warning, this is still very much in-progress, hence the incomplete documentation and many spelling mistakes!

# Running Adminer with HTTPS behind proxy and password
## For Ubuntu 18.04 LTS, to connect to databases running on the remote machine.

Assuming docker, docker-compose already installed.
You'll need aser account with sudo permissions.

Designed to operate in a server where you also have: 
https://github.com/jwilder/nginx-proxy
and https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion

## Step 1: Install the htpasswd utility to generate the password
sudo apt-get update
sudo apt-get install apache2-utils

## Step 2: close this repo
(wherever you normally clone your repos into)
git clone https://github.com/MarkErik/nginx-adminer

## Step 3: Create the .htpasswd file that will be used to provide an additional layer of security
sudo htpasswd -c .htpasswd USERNAME
You will be asked to supply and confirm a password for the user.
Check the file:
cat .htpasswd

## Step 4: Copy the .env.sample to .env and update with your configuration options
cp .env.sample .env
nano .env

## Step 5: Run the script to start the services
The script checks for the .env file and also creates the internal docker network.
./start-adminer.sh
