#!/bin/bash
#Script auto create trial user SSH
#yg akan expired setelah 1 hari



Login=TNL`</dev/urandom tr -dc X-Z0-9 | head -c4`
hari="1"
Pass=`</dev/urandom tr -dc a-f0-9 | head -c9`

useradd -e `date -d "$hari days" +"%Y-%m-%d"` $Login
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "==== SUCCESS ===="
echo -e "Porta    : 443 (dropbear)"
echo -e "Username : $Login"
echo -e "Senha: $Pass\n"
echo -e "==========================="
echo -e ""
