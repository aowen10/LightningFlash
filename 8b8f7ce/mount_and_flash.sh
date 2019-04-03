
mount /dev/sda4 /mnt/hdd/hdd1
mount /dev/sdb4 /mnt/hdd/hdd2

mount /dev/sdc /mnt/seed


ls /mnt/hdd | parallel -v -j2 rsync -avzh --progress /mnt/seed/Docker_Volumes /mnt/hdd/{}/ 