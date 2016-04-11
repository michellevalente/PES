require "dictionary"
setDictionary()
require "tabela"

function turn(numRodadas)
  print("Responda a palavra em ingles correspondente\n")
  local points = 0
  local turn = 0

  for pt, en in pairs( tabela ) do
    print("\nPalavra:")
    print(pt)
    answer=io.read()
    if (answer == "" ) then answer = io.read() end

    if en == answer then
      points = points + 1
      print("Good Job :)\n")
    else
      points = points - 1
      print("Errado!!\n")
    end
    turn = turn + 1

    if(turn == numRodadas) then
      return points
    end

  end
  return points
end

function main()
  print("Bem vindo ao Jogo do Dicionario!\n")
  print("Insira o numero de palavras da rodada: ")
  local numRodadas = io.read("*n")
  local points = turn(numRodadas)
  print("Numero total de pontos feitos: " .. points)
end
main()
