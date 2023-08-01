#! /bin/bash

while true
do
    docker build -t item-app:v1 .
    docker image ls
    docker tag item-app:v1 riotryulianto/item-app:v1
    echo $PASSWORD_DOCKER_HUB | docker login -u riotryulianto --password-stdin
    docker push riotryulianto/item-app:v1
done