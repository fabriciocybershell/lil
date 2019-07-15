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
trainer.train ("chatterbot.corpus.portuguese")
trainer.train ("chatterbot.corpus.portuguese.games")
trainer.train ("chatterbot.corpus.portuguese.greetings")
trainer.train ("chatterbot.corpus.portugueseenglish.conversations")

#arquivos de configurações
arq = open('stat.tk','r')
stat = arq.read()
arq.close()

arq = open('token.tk','r')
stat = arq.read()
arq.close()


#inicion do bot
def start(bot, update):
     bot.message.reply_text(f"{stat}")
            
#função de recebimento e envio de menssagem
def chat(update, context):
    resp = sexta.get_response(update.message.text)
    #update.message.reply_text(update.message.text(resp))
    update.message.reply_text(f"{resp}")

    #update.message.reply_text('não é permitido menssagens aqui !')

#definições do bot
def main():
    updater = Updater(f"{tok}", use_context=True)
    dp = updater.dispatcher
    dp.add_handler(CommandHandler("start", start))
    dp.add_handler(MessageHandler(Filters.text, chat))
    updater.start_polling()
    updater.idle()

if __name__ == '__main__':
    main()
