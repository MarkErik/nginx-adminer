#Check if .env file exists
if [ -e .env ]; then
    source .env
else 
    echo "Please set up your .env file before starting your environment."
    exit 1
fi

# Create internal network for docker-compose containers, assuming that the proxy network is already up
docker network create $INTERNAL

# Update local images
docker-compose pull

# Start the nginx and adminer services
docker-compose up -d

exit 0
