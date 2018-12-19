#!/bin/bash
#Petit script pour nettoyer tout le binz
#zf181219.1436

docker container rm -f -v docker-ubuntu
docker image rm -f docker-ubuntu-zf

#./list.sh
