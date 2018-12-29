#!/usr/bin/env bash



this_dir=/root/pfsense-backup
pfsense_url=
username=
password=
filename=

cd $this_dir





./pfsense-backup.py --server $pfsense_url --username $username --password $password  --file $filename


git pull
git add .
git commit -m "autobackuped config"
git push