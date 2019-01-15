#!/bin/bash
#Petit script pour nettoyer tout le binz
#zf190115.1605

docker container ls -a
docker image ls
docker container rm -f -v docker-ubuntu
docker image rm -f docker-ubuntu-zf
docker container ls -a
docker image ls

