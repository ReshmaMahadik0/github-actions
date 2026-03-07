


#cd "$(dirname "$0")/.."
#
echo "Docker Username: $DOCK_USERNAME"

echo "Build Docker Image"
docker build -t $DOCK_USERNAME/spring-boot-demo:latest .
echo "Push Docker Image"
docker push $DOCK_USERNAME/spring-boot-demo:latest
echo "Run Docker Container"
docker run -d -p 8080:8080 $DOCK_USERNAME/spring-boot-demo:latest

#docker build -t github-actions-example .
#docker run -d -p 8080:8080 github-actions-example