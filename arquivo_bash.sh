#!/bin/bash

echo "criando os diretórios..."
mkdir /publico
mkdir /ven
mkdir /adm
mkdir /sec

echo "criando os grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando os usuários..."
useradd carlos "Carlos" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd joao "João" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd maria "Maria" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd debora "Débora" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd roberto "Roberto" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd sebastiana "Sebastiana" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd josefina "Josefina" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GR_SEC
useradd amanda "Amanda" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd rogerio "Rogério" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven