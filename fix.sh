#!/bin/bash

# script by t.me/@zetaxbyte

# fix e2fsprogs & mke2fs 
echo -e "\n\033[93mfix mke2fs Invalid filesystem option set: has_journal,extent,huge_file,flex_bg,metadata_csum,metadata_csum_seed,64bit,dir_nlink,extra_isize,orphan_file\033[0m\n"
sleep 0.5
echo -e "\n\033[92mget purge e2fsprogs and remove mke2fs\033[0m\n"

sudo apt-get purge e2fsprogs
sleep 0.5
sudo rm /usr/sbin/mke2fs
sleep 0.5

#remove cacche hash table shell
hash -r

#dependecny for e2fsprogs
echo -e "\n\033[92msetup dependecy build for e2fsprogs\033[0m\n"

sudo apt update
sudo apt install build-essential libblkid-dev uuid-dev libuuid1 -y

#wget e2fsprogs latests
wget http://mirrors.kernel.org/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.46.5.orig.tar.gz
sleep 0.5
tar -xvzf e2fsprogs_1.46.5.orig.tar.gz
cd e2fsprogs-1.46.5
./configure
sudo make
sudo make install
sleep 1
cd ..
sudo rm e2fsprogs_1.46.5.orig.tar.gz
sudo rm -rf e2fsprogs-1.46.5/

echo -e "\n\033[92msetup e2fsprogs & mke2fs complete\033[0m\n"

echo -e "\n==========crave is wonderfully amazing==========\n"
