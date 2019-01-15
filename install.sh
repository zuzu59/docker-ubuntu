#Petit script pour lancer le binz
#zf190115.1650

docker build -t "docker-ubuntu-zf" .


echo -e "

Image docker-ubuntu-zf construite !

Après si on a besoin, il faut démarrer le containe avec:
docker run -d -i -v `pwd`:/root/work --name="docker-ubuntu" docker-ubuntu-zf

ensuite pour entrer dans le container il faut faire:
docker exec -it docker-ubuntu /bin/bash

ou directement ceci:
docker exec -it docker-ubuntu /bin/bash commande_a_tourner

et pour enlever le container il faut faire:
docker container rm -f -v docker-ubuntu


"

