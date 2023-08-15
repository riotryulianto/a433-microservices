#!/bin/bash

# Perintah untuk build Docker image dari berkas Dockerfile yang disediakan dengan nama riotryulianto/karsajobs-ui:latest
docker build -t riotryulianto/karsajobs-ui:latest .
# Perintah untuk login ke Docker Hub:
echo $PASSWORD_DOCKER_HUB | docker login -u riotryulianto --password-stdin
# Perintah untuk push image ke Docker Hub:
docker push riotryulianto/karsajobs-ui:latest