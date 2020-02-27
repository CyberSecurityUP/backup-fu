#!/bin/bash 
#Michael LaSalvia: DigitalOffensive and Joas Antonio: SHB Operations & Cyber Security UP
#Backup Script
#edit the file names / locations and place in crontab

bkr=`pgrep rclone`
if [ "$bkr" != "" ]
then
 read -p "Digite o nome do arquivo com caminho: " arq
 cp $arq  /root/backupdata/backup-`date +%F+%H`.ctb
 echo "Backup completo @ `date`" >> /var/log/autobackup.log
else
 nohup rclone mount googledrive: ../backupdata/ &  
 echo "rclone note running, starting the process 'date'" >> /var/log/autobackup.log
 sleep 10
 cp $arq /root/backupdata/backup-`date +%F+%H`.ctb
 echo "Backup completed @ 'date'" >> /var/log/autobackup.log
fi 
