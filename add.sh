#!/bin/bash
docker exec -i amnezia-awg /bin/sh -c "cat <<EOF >> \"/opt/amnezia/awg/wg0.conf\"
# BEGIN $1
[Peer]
PublicKey = $2
AllowedIPs = $3
PresharedKey = $4
# END $1
EOF"

