DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
. $DIR/setconnectparam.sh
echo "exclude.internal.topics=false" > /tmp/kafkaconsumer.config
$DIR/../bin/kafka-console-consumer.sh $KAFKA_SRV --from-beginning --consumer.config /tmp/kafkaconsumer.config --topic __consumer_offsets --formatter 'kafka.coordinator.group.GroupMetadataManager$OffsetsMessageFormatter'
