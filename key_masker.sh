#!/bin/bash
# Генерируем приватный ключ
private_key=$(wg genkey)

# Генерируем публичный ключ из приватного ключа
public_key=$(echo "$private_key" | wg pubkey)

# Выводим оба ключа в терминал
echo "$private_key,$public_key"