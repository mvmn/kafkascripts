for TOPIC in $(../bin/kafka-topics.sh --list --zookeeper 127.0.0.1)
do
  if [ "__consumer_offsets" = "$TOPIC" ]
  then
    echo Skipping: $TOPIC; 
  else
    echo DELETING: $TOPIC
    ../bin/kafka-topics.sh --zookeeper localhost --delete --topic $TOPIC
  fi
done

