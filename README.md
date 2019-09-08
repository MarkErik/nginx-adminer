# Running Adminer with HTTPS behind proxy and password
For Ubunut 18.04 LTS, to connect to databases running on the remote machine.
Assuming docker, docker-compose already installed.
User account with sudo permissions. Useful with 
https://github.com/jwilder/nginx-proxy
and https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion

## Step 1: Install the htpasswd utility to generate the password
sudo apt-get update
sudo apt-get install apache2-utils

## Step 2: close this repo
(whereever you normally clone your repos into)
git clone https://github.com/MarkErik/nginx-adminer.git

## Step 3: Create the .htpasswd file that will be used to provide an additional layer of security
sudo htpasswd -c .htpasswd USERNAME
You will be asked to supply and confirm a password for the user.
Check the file:
cat .htpasswd

## Step 4: Update the .env.sample file with your configuration options
Then:
mv .env.sample .env

## Step 5: Run the script to start the services
The script checks for the .env file and also create the internal docker network.
./start-adminer.sh