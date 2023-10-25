export SECRET_KEY=abc123
export DEBUG=True
export POSTGRES_DB=wines
export POSTGRES_USER=postgres
export POSTGRES_PASSWORD=postgres

docker-compose -f docker-compose.dev.yml up -d --build

sleep 10 
docker exec docker-compose-app-api-1  python /src/manage.py makemigrations 
docker exec docker-compose-app-api-1  python /src/manage.py migrate