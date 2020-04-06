DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
. $DIR/setconnectparam.sh
../bin/kafka-console-producer.sh $KAFKA_BROKERS --topic $*
