#!/bin/bash

echo "Criando usuarios do sistema...."
useradd guest55 -c "Usuario Convidado" -s /bin/bash -m -p $(openssl passwd senha123)
passwd guest55 -e
useradd guest44 -c "Usuario Convidado" -s /bin/bash -m -p $(openssl passwd senha123)
passwd guest44 -e
useradd guest22 -c "Usuario Convidado" -s /bin/bash -m -p $(openssl passwd senha123)
passwd guest22
echo "Finalizando!!"
