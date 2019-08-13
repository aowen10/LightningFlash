
ls /mnt/hdd | parallel -v -j4 rsync -avzh --progress /mnt/seed/Docker_Volumes /mnt/hdd/{}/ 
