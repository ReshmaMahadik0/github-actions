echo "Step 4: Building Docker image"
docker build -t github-actions-example .

echo "Step 5: Stop old container if running"
docker stop github-actions-container || true
docker rm github-actions-container || true

echo "Step 6: Running Docker container"
docker run -d -p 8080:8080 --name github-actions-container github-actions-example

echo "Deployment completed"