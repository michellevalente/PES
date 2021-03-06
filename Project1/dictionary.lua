-------------------------------------------------------------
-- Function to create table with dictionary
-- Preconditions:
-- -> The file Dicionario.txt is valid.
-- -> All the loops stop.
-------------------------------------------------------------
function setDictionary()

-- Open Files
local fileIn = io.open("Dicionario","r")
local fileOut = io.open("tabela.lua","w")

local n = 0
local first = 1

local beginString = "tabela = {"
fileOut:write(beginString)
local mark = string.char(34)

-- Read each line of the file
for line in fileIn:lines() do
  
  if n == 0 then
    n = 1
  else
    fileOut:write(",")
  end
  
  for word in string.gmatch(line, "%S+") do
  
    if(first == 1) then
      fileOut:write("['")
      fileOut:write(word)
      fileOut:write("']")
      fileOut:write(" = ")
      first = 0
    else
      fileOut:write("'")
      fileOut:write(word)
      fileOut:write("'")
    end
  end
  fileOut:write("\n")
  first = 1
end

local endString = "}"
fileOut:write(endString)

-- Close files
io.close(fileIn)
io.close(fileOut)

return quantidadePalavras

end
-------------------------------------------------------------
-- Postcondition:
-- -> The file Dicionario.txt is valid because it is not each
-- empty and each line contains 2 words.
-- -> The both loops read Dicionario.txt and will stop because
-- the file has finite number of words
-------------------------------------------------------------