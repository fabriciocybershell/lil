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
#sudo apt install python3 # instalar versão 3 do python
#sudo pip3 install -r requirements.txt
clear
echo "#########################################"
echo "# bem, agora o arquivo erá aberto, cole #"
echo "# sua token do @BotFather em 'SUA_TOKEN #"
echo "# _AQUI', e coloque sua menssagem de    #"
echo "# boas vindas em 'SUA_MENSSAGEM_DE_BOAS #"
echo "# VINDAS', e rode o bot, ou feche o     #"
echo "# editor que este script ira iniciar o  #"
echo "# bot autmaticamente.                   #"
echo "# OBD: ele demora um pouco para iniciar #"
echo "#########################################"
echo "apert ENTER para continuar ..."
read ignor;
gedit lil/chatbotlil.py
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

