#!/bin/bash

while true
do
    # Perintah untuk membuat Docker image dari Dockerfile, dgn nama image item-app, dan memiliki tag v1:
    docker build -t item-app:v1 .
    # Melihat daftar image di lokal:
    docker image ls
    # Mengubah nama image agar sesuai dengan format Docker Hub:
    docker tag item-app:v1 riotryulianto/item-app:v1
    # Login ke Docker Hub via Terminal:
    echo $PASSWORD_DOCKER_HUB | docker login -u riotryulianto --password-stdin
    # Mengunggah image ke Docker Hub:
    docker push riotryulianto/item-app:v1
    break
done