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

  local quantidadePalavras = 0
  local points = 0

  for pt, en in pairs (tabela) do
    quantidadePalavras = quantidadePalavras + 1
  end

  print("Bem vindo ao Jogo do Dicionario!\n")
  print("Insira o numero de palavras da rodada menor que " .. quantidadePalavras .. ":")
  local numRodadas = io.read("*n")

  if (0 < numRodadas and numRodadas <= quantidadePalavras) then
    points = turn(numRodadas)
    print("Numero total de pontos feitos: " .. points)
  else
    print("Quantidade invalida")
  end
end
main()
