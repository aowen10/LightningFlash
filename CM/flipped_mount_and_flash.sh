mount /dev/sda /mnt/seed
mount /dev/sdb3 /mnt/hdd/hdd1
mount /dev/sdc3 /mnt/hdd/hdd2
mount /dev/sdd3 /mnt/hdd/hdd3
mount /dev/sde3 /mnt/hdd/hdd4



ls /mnt/hdd | parallel -v -j4 rsync -avzh --progress /mnt/seed/Docker_Volumes /mnt/hdd/{}/ 

