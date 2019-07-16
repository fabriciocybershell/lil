#!/bin/bash
clear
echo ".##...........####.....##..........########...#######..########...
.##............##......##..........##.....##.##.....##....##......
.##............##......##..........##.....##.##.....##....##......
.##............##......##..........########..##.....##....##......
.##............##......##..........##.....##.##.....##....##......
.##.......###..##..###.##..........##.....##.##.....##....##......
.########.###.####.###.########....########...#######.....##......"
echo ""
echo "##################################################"
echo "# digite sua senha para instalar as dependências #"
echo "##################################################"
sudo apt install python3 # instalar versão 3 do python
clear
sudo pip3 install -r requirements.txt
clear
echo "#########################################"
echo "# bem, agora o arquivo sera aberto,cole #"
echo "# sua token do @BotFather em 'SUA_TOKEN #"
echo "# _AQUI', e coloque sua menssagem de    #"
echo "# boas vindas em 'SUA_MENSSAGEM_DE_BOAS #"
echo "# VINDAS', e rode o bot, ou feche o     #"
echo "# editor que este script ira iniciar o  #"
echo "# bot autmaticamente.                   #"
echo "# OBS: ele demora um pouco para iniciar #"
echo "#########################################"
echo "aperte ENTER para continuar ..."
read ignor;
echo "###################################################################"
echo "# caro usuário, você esta rodando localmente ou em docker/cloud ? #"
echo "# (1)localmente        (2)docker/cloud         (3)escolher editor #"
echo "###################################################################"
read opc;
  case $opc in
  "1") 
echo "abrindo arquivo com gedit ..."
sleep 2
gedit lil/chatbotlil.py
clear
  ;;
  "2")
echo "abrindo arquivo com nano ..."
sleep 2
clear
nano lil/chatbotlil.py
;;
  "3")
echo "digite o nome do editor a abrir:"
read edit;
${edit} lil/chatbotlil.py
;;
esac
#echo "gravando ..."
#touch lil/token.txt
#echo "${tokenn}" >> lil/token.txt
clear
#echo "###########################################################"
#echo "digite a menssagem que ira aparecer quando comando /start :"
#echo "###########################################################"
#read sta;
#touch lil/stat.txt
#echo "${sta}" >> lil/stat.txt
#clear
echo "executando chatterbot ..."
sleep 1
python3 lil/chatbotlil.py

