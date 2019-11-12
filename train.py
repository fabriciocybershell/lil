#!/usr/bin/python3
# -*- coding: UTF-8 -*-
from chatterbot import ChatBot
from chatterbot.trainers import ListTrainer
#nome do bot
sexta=ChatBot('sexta-fera')
#função de treino da lista
trainer = ListTrainer (sexta)
#trainer.train ("chatterbot.corpus.portuguese.conversations")
while True:
    user = input(">>> ")
    resp= sexta.get_response(user)
    print("bot: "+str(resp))
