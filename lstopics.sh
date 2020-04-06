DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
. $DIR/setconnectparam.sh
../bin/kafka-topics.sh $KAFKA_SRV --list
