#!/bin/bash

DBNAME=nextcloud
CONTAINER=`docker ps |grep "nextcloud_nextcloud_db."|awk '{ print $1 }'`
echo "restoring.. " $DBNAME $CONTAINER
cat backup.sql | docker exec -i $CONTAINER /usr/bin/mysql -u root --password=root $DBNAME
