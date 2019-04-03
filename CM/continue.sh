
ls /mnt/hdd | parallel -v -j3 rsync -avzh --progress /mnt/seed/Docker_Volumes /mnt/hdd/{}/ 
