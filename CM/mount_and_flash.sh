
mount /dev/sda4 /mnt/hdd/hdd1
mount /dev/sdb4 /mnt/hdd/hdd2
mount /dev/sdc4 /mnt/hdd/hdd3
mount /dev/sdd /mnt/seed


ls /mnt/hdd | parallel -v -j3 rsync -avzh --progress /mnt/seed/Docker_Volumes /mnt/hdd/{}/ 