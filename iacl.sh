#!/bin/bash

echo "Executando o script para início do teste"

echo "Criando Diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupo de Usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários"

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -5 Senha123) -g GRP_ADM
useradd maria -c "Maroa" -s /bin/bash -m -p $(openssl passwd -5 Senha123) -g GRP_ADM
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd -5 Senha123) -g GRP_ADM

useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -5 Senha123) -g GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -5 Senha123) -g GRP_VEN
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -5 Senha123) -g GRP_VEN

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -5 Senha123) -g GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -5 Senha123) -g GRP_SEC
useradd rogerio -c "Rogério" -s /bin/bash -m -p $(openssl passwd -5 Senha123) -g GRP_SEC

echo "Atribuir permissão aos Diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Teste Finalizados"
