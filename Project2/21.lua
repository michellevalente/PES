
-- The functions

function extract_words(path_to_file)
    assert(type(path_to_file) == "string", "I need a string!" )
    assert((path_to_file), "I need a non-empty string!" )

    if pcall(function () 
        local f = io.open(path_to_file,"r")
        local content = f:read("*all")
        end) then
        f:close()
    else
        io.write(string.format("I/O error when opening {%s}: I quit!\n",path_to_file))

    end
    
    for w in string.gmatch(content, "%w+") do
        table.insert(words, string.lower(w))
    end
    return words
end

function remove_stop_words(word_list)
    assert(type(word_list) == "table", "I need a table!")

    if pcall(function () 
        local f = io.open('../stop_words.txt',"r")
        local stop_words = f:read("*all")
        split(stop_words,',')
        end) then
        f:close()
    else
        io.write(string.format("I/O error when opening ../stop_words.txt: I quit!\n",path_to_file))
    end

    -- traduzir para lua
    -- stop_words.extend(list(string.ascii_lowercase))
    -- return [w for w in word_list if not w in stop_words]
end

function has_value (tab, val)
    for index, value in ipairs (tab) do
        if value == val then
            return true
        end
    end

    return false
end

function frequencies(word_list)
    assert(type(word_list) == "table", "I need a table!")
    assert(next(myTable), "I need a non-empty table!")

    word_freqs = {}
    for w in word_list do
        if(has_value(word_freqs, w)) then
            word_freqs[w] = word_freqs[w] + 1
        else
            word_freqs[w] = 1
        end
    end
    return word_freqs
end
