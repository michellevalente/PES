#Jogo do Dicionário

####Titulo:
Jogo do Dicionário

####Autores:
Michelle Valente - 1312828<br/>
Lucas Hardman - 1113567<br/>

####Versão atual:
v1.0

####Tamanho aproximado:
1.84Kb

####Sobre o jogo:
  Este programa é um jogo de tradução. Ao iniciar, o jogo pergunta quantas palavras o usuário quer tentar traduzir do português para o inglês. Depois, o jogo pede para o usuário traduzir a quantidade de palavras escolhidas, tendo apenas uma tentiva. Depois de cada resposta, uma mensagem aparece para informar se está correto ou errado. Em cada tentativa certa o jogador ganho um ponto, e em cada tentativa errada perde um ponto. No final é exibida uma notificação dizendo quantos pontos foram feitos.

####Arquitetura:

main.lua<br/>
|---> game.lua<br/>
|---> dicionary.lua<br/>
|---> tabela.lua<br/>

dicionary.lua<br/>
|---> tabela.lua<br/>
|---> dicionario.txt<br/>

Pré-condições:<br/>
1) Deve existir um arquivo dicionario.txt com as palavras em português acompanhadas das suas respectivas traduções em inglês.<br/>
2) O jogador deve entrar com um input que representa a quantidade de rodadas no jogo (palavras diferentes).<br/>
3) O jogador deve entrar com um input que representa a resposta em cada rodada.<br/>

Pós-condições:<br/>
1) Em cada rodada o jogo deve apresentar um output dizendo se a resposta está certa ou errada.<br/>
2) No final do jogo deve se apresentada a pontuação final do jogador.<br/>
3) O input dado pelo jogador para saber a quantidade de rodadas deve ser positivo e menor ou igual ao numero de palavras no arquivo dicionario.txt.<br/>

### Livro diario:

####09/04/2016
Instalamos o interpretador de lua e começamos a estudar a linguagem. Não foi muito difícil de aprender.<br/>Começamos a pensar na aplicação. Foi um pouco complicado decidir um programa que não fosse muito fácil e nem muito difícil. Mas tinhamos algumas ideias em mente.

####10/04/2016

A Michelle deu uma nova ideia de fazer um jogo de tradução português/inglês e resolvemos usá-la. Então a Michelle pensou a arquitetura e programou o módulo da main.lua e fez o arquivo dicionario.txt. O Lucas programou os módulos dictionary.lua e tabela.lua. O programa ficou pronto na sua primeira versão no mesmo dia.

####11/04/2016

Na segunda-feira checamos as regras de disciplina. A Michelle checou as regras "Identidade", "Verificação e Validação" e "Modularidade" e o Lucas checou as regras "Rastro para o conector", "Desenho simples" e "Livro diário". Também foram feitas algumas modificações no programa para restringir a quantidade de partidas para um número menor ou igual ao número de palavras no arquivo dicionario.txt.
