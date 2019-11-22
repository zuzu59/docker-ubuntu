#!/bin/bash
# Petit script pour configurer un petit ubuntu dans un container docker
# zf191122.1251
# source:


#exit

# change les sources pour apt-get, cela permet d'aller beaucoup plus vite que les serveurs USA où il y a trop de monde :-(
#sed -i -e "s/http:\/\/archive.ubuntu.com/http:\/\/mirror.switch.ch\/ftp\/mirror\/ubuntu/g" /etc/apt/sources.list
sed -i -e "s/http:\/\/archive.ubuntu.com/http:\/\/ubuntu.ethz.ch/g" /etc/apt/sources.list

#exit

apt-get update
apt-get -y install htop
#exit

apt-get -y install nano bash-completion command-not-found sudo net-tools inetutils-ping patch git curl
ln -s /usr/bin/python3 /usr/bin/python
cp yaml.nanorc /usr/share/nano
sleep 3
#exit

patch -i bashrc.diff /root/.bashrc
rm /etc/apt/apt.conf.d/docker-clean
apt-get update
#exit

#apt-get -y install openssh-server

