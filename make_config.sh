#!/bin/bash
PublicKey="$1"
PresharedKey="$2"
# Путь к вашему конфигурационному файлу в контейнере
CONFIG_FILE="/opt/amnezia/awg/wg0.conf"

# Добавьте новый пир в конец файла
docker exec -i amnezia-awg bash -c "echo -e '\n[Peer]' >> $CONFIG_FILE"
docker exec -i amnezia-awg bash -c "echo 'PublicKey = $PublicKey' >> $CONFIG_FILE"
docker exec -i amnezia-awg bash -c "echo 'PresharedKey = $PresharedKey' >> $CONFIG_FILE"
