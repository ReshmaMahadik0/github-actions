echo "Step 1: Build Project"

cd "$(dirname "$0")/.."
./mvnw clean install -DskipTests