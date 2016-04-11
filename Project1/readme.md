#Jogo do Dicionario

####Titulo:
Jogo do Dicionario

####Autores:
@michellevalente
@lucashardman

####Versão atual:
v1.0

####Tamanho aproximado:
1.84Kb

####Sobre o jogo:
  Este programa é um jogo de tradução. Ao iniciar, o jogo pergunta quantas palavras o usuário quer tentar traduzir do português para o inglês. Depois, o jogo pede para o usuário traduzir a quantidade de palavras escolhidas, tendo apenas uma tentiva. Depois de cada resposta, uma mensagem aparece para informar se está correto ou errado. Em cada tentativa certa o jogador ganho um ponto, e em cada tentativa errada perde um ponto. No final é exibida uma notificação dizendo quantos pontos foram feitos.

####Arquitetura:

main.lua<br/>
|---> dicionary.lua<br/>
|---> tabela.lua<br/>

dicionary.lua<br/>
|---> tabela.lua<br/>
|---> dicionario.txt<br/>

Pré-condições:
1) Deve existir um arquivo dicionario.txt com as palavras em português acompanhadas das suas respectivas traduções em inglês.
2) O jogador deve entrar com um input que representa a quantidade de rodadas no jogo (palavras diferentes).
3) O jogador deve entrar com um input que representa a resposta em cada rodada.

Pós-condições:
1) Em cada rodada o jogo deve apresentar um output dizendo se a resposta está certa ou errada.
2) No final do jogo deve se apresentada a pontuação final do jogador.
3) O input dado pelo jogador para saber a quantidade de rodadas deve ser positivo e menor ou igual ao numero de palavras no arquivo dicionario.txt.

### Livro diario:

####10/04/2016

####11/04/2016
