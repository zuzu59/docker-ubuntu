#!/bin/bash
#Petit script pour nettoyer tout le binz
#zf190424.1119

#source: http://patatos.over-blog.com/2016/09/commet-faire-du-menage-dans-les-conteneurs-et-images-docker.html



echo -e "
Suprime tous les containers qui ne tournent pas et ses volumes
"
docker container ls -a
docker rm -v $(docker ps -aqf status=exited)
docker container ls -a

echo -e "
Suprime le container et son volume
"
docker container ls -a
#docker container rm -f -v docker-ressenti
docker container ls -a

echo -e "
Suprime tous les volumes orphelins
"
docker volume ls
docker volume rm $(docker volume ls -qf dangling=true)
docker volume ls

