
echo "Init replicaset"
mongo mongodb://$HOST_NAME:27017  --eval 'rs.initiate({_id: "'$RPL_NAME'", members: [{_id: 0, host: "'$HOST_NAME':27017"}]})';
STATUS=$?
echo "status ="
echo  $STATUS
if [ $STATUS != 0 ]; then
    echo "failed, trying to init replicaset again"
    mongo mongodb://$HOST_NAME:27017  --eval 'rs.initiate({_id: "'$RPL_NAME'", members: [{_id: 0, host: "'$HOST_NAME':27017"}]})';
    STATUS=$?
    echo "status ="
    echo  $STATUS
    if [ $STATUS != 0 ]; then
        exit 1;
    fi
else
    echo "Replicaset is initialized"
fi

set -e ;