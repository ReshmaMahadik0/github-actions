cd "$(dirname "$0")/.."

echo "Step 2: Run Tests"
./mvn test
used maven wrapper instead of system wrapper

#mvn test