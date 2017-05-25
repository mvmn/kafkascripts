../bin/kafka-topics.sh --zookeeper localhost --create --replication-factor 1 --partitions 1 --topic $*
