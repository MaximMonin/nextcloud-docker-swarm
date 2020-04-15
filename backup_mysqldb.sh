#!/bin/bash

DBNAME=nextcloud
CONTAINER=`docker ps |grep "nextcloud_nextcloud_db."|awk '{ print $1 }'`
echo "backup.. " $DBNAME $CONTAINER
docker exec $CONTAINER /usr/bin/mysqldump -u root --password=root $DBNAME > backup.sql
