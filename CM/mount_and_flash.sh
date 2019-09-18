
mount /dev/sda3 /mnt/hdd/hdd1
mount /dev/sdb3 /mnt/hdd/hdd2
mount /dev/sdc3 /mnt/hdd/hdd3
mount /dev/sdd3 /mnt/hdd/hdd4
mount /dev/sde /mnt/seed



ls /mnt/hdd | parallel -v -j4 rsync -avzh --progress /mnt/seed/Docker_Volumes /mnt/hdd/{}/ 
