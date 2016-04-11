function setDictionary()

local fileIn = io.open("Dicionario","r")
local fileOut = io.open("table.lua","w")

local n = 0
local first = 1

local beginString = "dictionary = {"
fileOut:write(beginString)
local mark = string.char(34)

for line in fileIn:lines() do


  if n == 0 then
    fileOut:write("{ ")
    n = 1
  else
    fileOut:write(",{ ")
  end
  
  for word in string.gmatch(line, "%S+") do
    fileOut:write(mark)
    fileOut:write(word)
    fileOut:write(mark)
    if(first == 1) then
      fileOut:write(", ")
      first = 0
    end
  end
  
  fileOut:write(" }")
  first = 1

end

local endString = "}"
fileOut:write(endString)

io.close(fileIn)
io.close(fileOut)

end
