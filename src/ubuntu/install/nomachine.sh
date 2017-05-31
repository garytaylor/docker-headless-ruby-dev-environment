#!/usr/bin/env bash

echo "Nomachine Server"
wget http://download.nomachine.com/download/5.2/Linux/nomachine_5.2.21_1_amd64.deb
dpkg -i nomachine_5.2.21_1_amd64.deb
groupadd -r nomachine -g 433 \
useradd -u 431 -r -g nomachine -d /home/nomachine -s /bin/bash -c "NoMachine" nomachine \
mkdir /home/nomachine \
chown -R nomachine:nomachine /home/nomachine \
echo 'nomachine:nomachine' | chpasswd \
service ssh start \
chmod +x /nxserver.sh
