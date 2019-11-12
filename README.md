# chatterbot python telegram com machine learning

![Package Version](https://img.shields.io/badge/version-0.0.2-blue.svg?cacheSeconds=2592000) ![Package Version](https://img.shields.io/badge/in-development-brightgreen.svg) ![Package Version](https://img.shields.io/badge/dependencias-chatterbot%20-green.svg) ![Package Version](https://img.shields.io/badge/-pip3-green.svg) ![Package Version](https://img.shields.io/badge/-python3-green.svg) ![Package Version](https://img.shields.io/badge/-python_telegram_bot-green.svg)

 para fazer o download e instalação deste software, basta copiar e colar a linha de comando abaixo, aguardar um momento até que ele peça para você digitar a sua senha, e aguarde a instalação proseguir:
```
git clone https://github.com/fabriciocaetano/lil.git && chmod 755 lil/install.sh && ./lil/install.sh 
````
em seguida, irá aparecer o menu do instalador "L.I.L BOT", siga o que for solicitado pelo menu interativo para configurar o seu bot, e ele estará pronto para executar.

foi adicionado recentemente uma função de treinamento de conversas exportadas do whatsapp, um Shell Script capaz de filtrar os dados e lançar as conversas para o chatbot de maneira offline para treinar com as menssagens. para usar siga o tutorial a seguir:

# exportando dados para treinamento
 primeiro, é necessário que você entre em um chat do whatsapp e escolha uma de suas conversas pessoais, clicando em "três pontinhos", no canto superior direito. depois em MAIS: 
 ![menu](https://telegra.ph/file/1900650d8aeaa98360e3e.jpg)
 e em exportar conversa:
 ![menu](https://telegra.ph/file/7a3700ff8bb2e86044609.jpg)
 
 # tratando dados
 
  para se tratar os dados precisamos do arquivo "treinamento.sh", para usá-lo, basta abrir o terminal e navegar até a pasta /lil/ e executar usando:
  
**Command Line:**
´´´
./treinamento <ARQUIVO EXPORTADO.TXT>
 
´´´
 é aconselhavel que você renomeie o arquivo para um unico nome, e em seguida ele perguntará o nome de destino .csv, bastando digitar apenas o nome que ele gera o arquivo e treina o chatbot sosinho. seghue um exemplo de linha de comando rela abaixo com dados falsos:
 [![asciicast](https://asciinema.org/a/280732.svg)](https://asciinema.org/a/280732)
 
você esta livre para me enviar qualquer bug, correção, reclamação ou melhoria, que seja de maneira detalhada e construtiva.
