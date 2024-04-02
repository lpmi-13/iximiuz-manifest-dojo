docker build -t flask-webserver -f service-src/webserver/Dockerfile service-src/webserver/
docker tag flask-webserver registry.iximiuz.com/flask-webserver
docker push registry.iximiuz.com/flask-webserver

docker build -t logs-processor -f service-src/logs-processor/Dockerfile service-src/logs-processor/
docker tag logs-processor registry.iximiuz.com/logs-processor
docker push registry.iximiuz.com/logs-processor

docker build -t user-info -f service-src/user-info/Dockerfile service-src/user-info/
docker tag user-info registry.iximiuz.com/user-info
docker push registry.iximiuz.com/user-info

docker build -t load-generator -f service-src/load-generator/Dockerfile service-src/load-generator/
docker tag load-generator registry.iximiuz.com/load-generator
docker push registry.iximiuz.com/load-generator
