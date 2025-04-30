"# pratica6" 
docker-compose build
docker build -t app-image -f app/Dockerfile ./app
docker build -t tester-image -f tester/Dockerfile ./tester
docker-compose up -d 
docker-compose up --exit-code-from tester
docker run -d --name app -p 3000:3000 app-image
docker run --rm --network container:app tester-image
docker ps
docker logs app
docker logs tester
