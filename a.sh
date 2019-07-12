#! /bin/bash
sudo rm -r ForadaMatrix
git clone https://github.com/foradamatrix/ForadaMatrix.git
clear
sudo apt install python3
cd ForadaMatrix && sudo pip3 install -r requirements.txt
clear
echo abrindo arquivo ...
gedit foradamatrix.py
clear
echo executando ...
python3 foradamatrix.py
cd ..
