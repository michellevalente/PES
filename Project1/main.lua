require "dictionary"
setDictionary()
require "tabela"
require "game"

--------------------------------------------------------
-- Main Function
-- Preconditions:
-- -> The function will because stop the loop to read
-- tabela.
-- -> The function will stop because all the functions
-- used also will stop.
--------------------------------------------------------
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

-------------------------------------------------------------
-- Postconditions:
-- -> The loop to read tabela will stop because tabela is
-- a valid and finite table. 
-- -> The function turn() will stop because it was tested.
-------------------------------------------------------------