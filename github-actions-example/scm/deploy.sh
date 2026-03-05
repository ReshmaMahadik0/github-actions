echo "Step 4: Building Docker image"
docker build -t github-actions-example .

echo "Step 5: Running Docker container"
docker run -d -p 8080:8080 github-actions-example