


#cd "$(dirname "$0")/.."

#

if [ -z "$DOCKER_USERNAME" ]; then
  echo "Error: DOCKER_USERNAME is not set. Check your GitHub Secrets and workflow env mapping."
  exit 1
fi

echo "Docker Username: $DOCKER_USERNAME"

echo "Build Docker Image"
docker build -t "${DOCKER_USERNAME}/spring-boot-demo:latest" .
echo "Push Docker Image"
docker push "${DOCKER_USERNAME}/spring-boot-demo:latest"
echo "Run Docker Container"
docker run -d -p 8080:8080 "${DOCKER_USERNAME}/spring-boot-demo:latest"

#docker build -t github-actions-example .
#docker run -d -p 8080:8080 github-actions-example