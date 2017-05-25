echo "exclude.internal.topics=false" > /tmp/consumer.config
../bin/kafka-console-consumer.sh --zookeeper localhost --from-beginning --consumer.config /tmp/consumer.config --topic __consumer_offsets --formatter "kafka.coordinator.GroupMetadataManager\$OffsetsMessageFormatter"
