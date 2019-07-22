
mount /dev/sda4 /mnt/hdd/hdd1
mount /dev/sdc4 /mnt/hdd/hdd2
mount /dev/sdd4 /mnt/hdd/hdd3
mount /dev/sde4 /mnt/hdd/hdd4
mount /dev/sdf4 /mnt/hdd/hdd5


mount /dev/sdb /mnt/seed


ls /mnt/hdd | parallel -v -j6 rsync -avzh --progress /mnt/seed/Docker_Volumes /mnt/hdd/{}/ 