#!/bin/bash
echo "Удаляем строки для аргумента: $1"
docker exec -i amnezia-awg bash -c "sed -i '/# BEGIN $1/,/# END $1/d' /opt/amnezia/awg/wg0.conf"



