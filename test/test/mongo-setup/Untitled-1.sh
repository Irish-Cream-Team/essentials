#!/usr/bin/env bash




#!/bin/sh    
ATTEMPTS=0 ; LIMIT=59 ;
mongo mongodb://$HOST_NAME:27017  --eval 'rs.initiate({_id: "'$RPL_NAME'", members: [{_id: 0, host: "'$HOST_NAME':27017"}]})';

STATUS=$?

echo  $STATUS

until [ $STATUS = 0 ]
do
    ATTEMPTS=`expr $ATTEMPTS + 1` ;
    echo \"Failed attempts: $ATTEMPTS\" ;
    if [ $ATTEMPTS -gt $LIMIT ]; then
    exit 1 ;
    fi ;
    sleep 2 ; # 1 second intervals between attempts
    
    mongo mongodb://$HOST_NAME:27017  --eval 'rs.initiate({_id: "'$RPL_NAME'", members: [{_id: 0, host: "'$HOST_NAME':27017"}]})';
    STATUS=$? ;

done ;
set -e ; # reset `e` as active