podman build -t flask-webserver -f service-src/webserver/Dockerfile service-src/webserver/
podman tag flask-webserver registry.iximiuz.com/flask-webserver
# podman push registry.iximiuz.com/flask-webserver

podman build -t logs-processor -f service-src/logs-processor/Dockerfile service-src/logs-processor/
podman tag logs-processor registry.iximiuz.com/logs-processor
# podman push registry.iximiuz.com/logs-processor

podman build -t user-info -f service-src/user-info/Dockerfile service-src/user-info/
podman tag user-info registry.iximiuz.com/user-info
# podman push registry.iximiuz.com/user-info

podman build -t load-generator -f service-src/load-generator/Dockerfile service-src/load-generator/
podman tag load-generator registry.iximiuz.com/load-generator
# podman push registry.iximiuz.com/load-generator
