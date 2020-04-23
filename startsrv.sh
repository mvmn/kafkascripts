DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
. $DIR/setconnectparam.sh
$DIR/../bin/kafka-server-start.sh $DIR/../config/server.properties
