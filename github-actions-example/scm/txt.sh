cd "$(dirname "$0")/.."


echo "STEP 1 : Build Spring Boot Project"
chmod +x mvnw
./mvnw clean install -DskipTests


echo "STEP 2 : Run Tests"
./mvnw test


echo "STEP 3 : SonarQube Analysis"
./mvnw clean verify sonar:sonar \
  -Dsonar.token=$SONAR_TOKEN \
  -Dsonar.organization=reshmamahadik0 \
  -Dsonar.projectKey=ReshmaMahadik0_github-actions \
  -Dsonar.host.url=https://sonarcloud.io

echo "STEP 4 : Docker Build"
echo "Docker Username: $DOCKER_USERNAME"
docker build -t "${DOCKER_USERNAME}/spring-boot-demo:latest" .


echo "STEP 5 : Push Docker Image"
docker push "${DOCKER_USERNAME}/spring-boot-demo:latest"

echo "Run Docker Container"
docker run -d -p 8080:8080 "${DOCKER_USERNAME}/spring-boot-demo:latest"


