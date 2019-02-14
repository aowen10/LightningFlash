#!/bin/bash
#Script to mount a full set of harddrives, and create the proper directories
#This assumes that all the drives are plugged in to the sata connectors
#Also, this should bew run with the sudo command

#Format all the harddrives
#The names on disk are sda...sdf

mkfs.ext4 /dev/sda
mkfs.ext4 /dev/sdb
mkfs.ext4 /dev/sdc
mkfs.ext4 /dev/sdd
mkfs.ext4 /dev/sde

#Mount the harddrives

mount /dev/sda /mnt/hdd/hdd1
mount /dev/sdb /mnt/hdd/hdd2
mount /dev/sdc /mnt/hdd/hdd3
mount /dev/sdd /mnt/hdd/hdd4
mount /dev/sde /mnt/hdd/hdd5

#Create the folder directories on each of the devices

mkdir /mnt/hdd/hdd1/Docker_Volumes
mkdir /mnt/hdd/hdd1/Docker_Volumes/Lightning
mkdir /mnt/hdd/hdd1/Docker_Volumes/Lightning/Mainnet
mkdir /mnt/hdd/hdd1/Docker_Volumes/Lightning/Testnet
mkdir /mnt/hdd/hdd1/Docker_Volumes/Lightning/Simnet

mkdir /mnt/hdd/hdd2/Docker_Volumes
mkdir /mnt/hdd/hdd2/Docker_Volumes/Lightning
mkdir /mnt/hdd/hdd2/Docker_Volumes/Lightning/Mainnet
mkdir /mnt/hdd/hdd2/Docker_Volumes/Lightning/Testnet
mkdir /mnt/hdd/hdd2/Docker_Volumes/Lightning/Simnet


mkdir /mnt/hdd/hdd3/Docker_Volumes
mkdir /mnt/hdd/hdd3/Docker_Volumes/Lightning
mkdir /mnt/hdd/hdd3/Docker_Volumes/Lightning/Mainnet
mkdir /mnt/hdd/hdd3/Docker_Volumes/Lightning/Testnet
mkdir /mnt/hdd/hdd3/Docker_Volumes/Lightning/Simnet


mkdir /mnt/hdd/hdd4/Docker_Volumes
mkdir /mnt/hdd/hdd4/Docker_Volumes/Lightning
mkdir /mnt/hdd/hdd4/Docker_Volumes/Lightning/Mainnet
mkdir /mnt/hdd/hdd4/Docker_Volumes/Lightning/Testnet
mkdir /mnt/hdd/hdd4/Docker_Volumes/Lightning/Simnet


mkdir /mnt/hdd/hdd5/Docker_Volumes
mkdir /mnt/hdd/hdd5/Docker_Volumes/Lightning
mkdir /mnt/hdd/hdd5/Docker_Volumes/Lightning/Mainnet
mkdir /mnt/hdd/hdd5/Docker_Volumes/Lightning/Testnet
mkdir /mnt/hdd/hdd5/Docker_Volumes/Lightning/Simnet


#so now it is time to pull from the M2.ssd
#This should take a very long time



ls /mnt/hdd | parallel -v -j8 rsync -r --progress /mnt/seed/bitcoin-mainnet-data/ /mnt/hdd/{}/Docker_Volumes/Lightning/Mainnet/ 