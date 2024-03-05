#!/bin/bash


AllowedIPs="$1"

CONFIG_FILE="/opt/amnezia/awg/wg0.conf"

docker exec -i amnezia-awg bash -c "echo 'AllowedIPs = $AllowedIPs' >> $CONFIG_FILE"

