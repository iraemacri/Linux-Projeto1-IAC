#!/bin/bash

echo "Script de criação e provisionamento de estrutura usuários, diretórios e permissões... "

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN 
groupadd GRP_SEC

useradd carlos -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC

echo "Atribuindo permissões nos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Script finalizado com sucesso!!" 




