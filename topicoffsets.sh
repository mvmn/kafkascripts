DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
. $DIR/setconnectparam.sh
../bin/kafka-run-class.sh kafka.tools.GetOffsetShell $KAFKA_BROKERS --topic $*

