DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
. $DIR/setconnectparam.sh
for TOPIC in $($DIR/../bin/kafka-topics.sh $KAFKA_SRV --list)
do
  if [ "__consumer_offsets" = "$TOPIC" ]
  then
    echo Skipping: $TOPIC; 
  else
    echo DELETING: $TOPIC
    $DIR/../bin/kafka-topics.sh $KAFKA_SRV --delete --topic $TOPIC
  fi
done

