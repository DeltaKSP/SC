#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd kaique -m -s /bin/bash -p $(openssl passwd -crypt 0516) -G GRP_ADM
useradd michael -m -s /bin/bash -p $(openssl passwd -crypt 0516) -G GRP_ADM
useradd lucas -m -s /bin/bash -p $(openssl passwd -crypt 0516) -G GRP_ADM

useradd Igor -m -s /bin/bash -p $(openssl passwd -crypt 2410) -G GRP_VEN
useradd Jeferson -m -s /bin/bash -p $(openssl passwd -crypt 2410) -G GRP_VEN
useradd Pedro -m -s /bin/bash -p $(openssl passwd -crypt 2410) -G GRP_VEN

useradd Julia -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd Carol -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd Gabriela -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim, Obrigado :)....."

