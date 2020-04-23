DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
. $DIR/setconnectparam.sh
$DIR/../bin/kafka-console-consumer.sh $KAFKA_SRV --from-beginning --topic $*
