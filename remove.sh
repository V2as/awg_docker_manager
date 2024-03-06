#!/bin/bash
docker exec -i amnezia-awg bash -c "sed -i \"/# BEGIN \${$1}$/,/# END \${$1}$/d\" \"/opt/amnezia/awg/wg0.conf\""


