#! bin/bash/python3
# -*- coding: UTF-8 -*-

#bibliotecas
import telegram
import logging
from chatterbot.trainers import ListTrainer
from chatterbot import ChatBot
from telegram.ext import (Updater, CommandHandler, MessageHandler, Filters)
#logger de processos
logging.basicConfig(format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
                    level=logging.INFO)
logger = logging.getLogger(__name__)

#nome do bot
sexta=ChatBot('sexta-fera')

#lista de treinamento
convI = [
    'Oi',
    'Olá',
    'Tudo bem?',
    'Estou bem obrigado'
]

convF = [
   'sexta fera',
   'diga:',
   'você esta bem ?',
   'claro que sim'
]

#função de treino da lista
trainer = ListTrainer (sexta)
#listas a serem treinadas
trainer.train(convI)
trainer.train(convF)
#inicion do bot
def start(bot, update):
    bot.message.reply_text("SUA_MENSSAGEM_DE_BOAS_VINDAS")
            
#função de recebimento e envio de menssagem
def chat(update, context):
    resp = sexta.get_response(update.message.text)
    update.message.reply_text(f"{resp}")

#definições do bot
def main():
    #arq = open('token.txt','r')
    #tokk = arq.read()
    #arq.close()
    updater = Updater("SEU_TOKEN_AQUI", use_context=True)
    dp = updater.dispatcher
    dp.add_handler(CommandHandler("start", start))
    dp.add_handler(MessageHandler(Filters.text, chat))
    updater.start_polling()
    updater.idle()

if __name__ == '__main__':
    main()
