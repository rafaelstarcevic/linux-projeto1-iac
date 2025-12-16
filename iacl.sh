#!/bin/bash

echo "criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios..."

useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM -f 7
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM -f 7
useradd joao -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM -f 7

useradd debora -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN -f 7
useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN -f 7
useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN -f 7

useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC -f 7
useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC -f 7
useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC -f 7

echo "especificando permissões dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "fim....."
