
#docker build -t github-actions-example .

cd "$(dirname "$0")/.."

echo "Docker Username: $DOCKER_USERNAME"
echo "Build Docker Image"
docker build -t $DOCKER_USERNAME/github-actions-example .
echo "Push Docker Image"
docker push $DOCKER_USERNAME/github-actions-example
echo "Run Docker Container"
docker run -d -p 8080:8080 $DOCKER_USERNAME/github-actions-example

#docker run -d -p 8080:8080 github-actions-example