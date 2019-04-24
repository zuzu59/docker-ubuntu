#!/bin/bash
#Petit script pour lister tout le binz de Docker
#zf190424.1129


echo -e "\n---Liste des containers"
docker container ls -a
echo -e "\n---Liste des images"
docker image ls
echo -e "\n---Liste des volumes"
docker volume ls
echo -e "\n---Liste des networks"
docker network ls
echo -e "\n"

