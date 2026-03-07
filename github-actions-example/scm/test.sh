#cd "$(dirname "$0")/.."
#
#echo "Step 2: Run Tests"
#./mvn test
#used maven wrapper instead of system wrapper

#mvn test

cd "$(dirname "$0")/.."

chmod +x mvnw

echo "Step 2: Run Tests"
./mvnw test
#This moves execution to the project root where mvnw exists.