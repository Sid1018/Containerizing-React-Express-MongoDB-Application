docker-compose build

TIMESTAMP=$(date +%Y%m%d%H%M%S)
docker tag frontend-app:latest sidd003/frontend-app:$TIMESTAMP
docker tag backend-app:latest sidd003/backend-app:$TIMESTAMP

# Push the images to Docker Hub
docker push sidd003/frontend-app:$TIMESTAMP
docker push sidd003/backend-app:$TIMESTAMP

# Update the Docker Compose file with the new image versions
sed -i "s/:latest/:$TIMESTAMP/g" docker-compose.yml

# Run the Docker Compose file to start the application
docker-compose up -d

