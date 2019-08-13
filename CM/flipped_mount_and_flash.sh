mount /dev/sda /mnt/seed
mount /dev/sdb4 /mnt/hdd/hdd1
mount /dev/sdc4 /mnt/hdd/hdd2
mount /dev/sdd4 /mnt/hdd/hdd3
mount /dev/sde4 /mnt/hdd/hdd4


ls /mnt/hdd | parallel -v -j4 rsync -avzh --progress /mnt/seed/Docker_Volumes /mnt/hdd/{}/ 