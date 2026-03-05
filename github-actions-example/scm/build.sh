cd "$(dirname "$0")/.."

chmod +x mvnw

echo "Step 1: Build Project"
./mvnw clean install -DskipTests