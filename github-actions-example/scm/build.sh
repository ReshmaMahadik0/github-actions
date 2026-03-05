cd "$(dirname "$0")/.."

echo "Step 1: Build Project"
./mvnw clean install -DskipTests