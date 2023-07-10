#!/bin/bash

#written by %mahm01d%

sleep  
clear 
echo "----------------------------------------"
mysqldump --no-create-info  --compact root_cwp backups >/tmp/backup_status.txt
status=$(cat /tmp/backup_status.txt | cut -d',' -f2) ; echo "backup is $status"
backupexist=$(du -sh /backup/*) ; echo -e "##backup size### \n $backupexist"
