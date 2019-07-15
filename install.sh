#!/bin/bash
clear
echo ".##...........####.....##..........########...#######..########...
.##............##......##..........##.....##.##.....##....##......
.##............##......##..........##.....##.##.....##....##......
.##............##......##..........########..##.....##....##......
.##............##......##..........##.....##.##.....##....##......
.##.......###..##..###.##..........##.....##.##.....##....##......
.########.###.####.###.########....########...#######.....##......"
echo "##################################################"
echo "# digite sua senha para instalar as dependências #"
echo "##################################################"
sudo apt install python3 # instalar versão 3 do python
sudo pip3 install -r requirements.txt
clear
echo "####################################"
echo "cole sua token do telegram bot aqui:" 
echo "####################################"
read tokenn;
echo "gravando ..."
touch token.tk
echo "${tokenn}" >> token.tk
clear
echo "###########################################################"
echo "digite a menssagem que ira aparecer quando comando /start :"
echo "###########################################################"
read sta;
touch stat.tk
echo "${sta}" >> stat.tk
clear
echo "executando chatterbot ..."
sleep 2
python3 chatbotlil.py

