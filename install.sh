#Petit script pour lancer le binz
#zf181219.1435

docker build -t "docker-ubuntu-zf" .
docker run -d -i -v `pwd`:/root/work --name="docker-ubuntu" docker-ubuntu-zf


echo -e "


Après il faut faire:

docker exec -it docker-ubuntu /bin/bash

puis à l'intérieur du container:

./test1.sh

ou directement ceci:

docker exec -it docker-ubuntu /bin/bash /root/work/test1.sh


"

