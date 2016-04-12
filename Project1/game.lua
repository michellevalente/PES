-------------------------------------------------------------
-- Loop for the game. 
-- Parameters: number of words to play
-- Preconditions:
-- -> The function will stop when when turn reach numRodadas.
-------------------------------------------------------------
function turn(numRodadas)
  print("Responda a palavra em ingles correspondente\n")
  local points = 0
  local turn = 0

  -- Loop in all the words
  for pt, en in pairs( tabela ) do
    print("\nPalavra:")
    print(pt)
    
    -- Expect answer with letter and without accents 
    answer=io.read()
    if (answer == "" ) then answer = io.read() end
    
    -- Right Answer
    if en == answer then
      points = points + 1
      print("Good Job :)\n")
    -- Wrong Answer
    else
      points = points - 1
      print("Errado!!\n")
    end
    turn = turn + 1
    
    -- Stop if get to the number of turns set by user
    if(turn == numRodadas) then
      return points
    end
end
  return points
end

-------------------------------------------------------------
-- Postconditions:
-- -> The function will stop because after each loop to read
-- the table tabela, the variable turn will be increased by
-- 1. When the table is all read, turn == numRodadas, the
-- function will stop.
-- -> The function will always stop because it return the 
-- variable points if the turn == numRodadas and after the 
-- loop if the loop go wrong.
-------------------------------------------------------------