
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

function sort(word_freq)
	assert(type(word_freq) == "table"), "I need a table!")
	assert((word_freq), "I need a non-empty dictionary!")

	--traduzir para Lua
	-- try:
    --     return sorted(word_freq.iteritems(), key=operator.itemgetter(1), reverse=True)
    -- except Exception as e:
    --     print "Sorted threw {0}: {1}".format(e)
    --     raise e

function len(table)
	local count = 0;
	for _ in pairs(T) do 
		count = count + 1
	end

	return count
end


--The main function

xpcall(function () 

			local word_freqs

			assert((arg[1]), "You idiot! I need an input file!")
			word_freqs = sort(frequencies(remove_stop_words(extract_words(arg[1]))))

			assert(type(word_freqs) == "table", "OMG! This is not a table!")
			assert((len(word_freqs) > 25), "SRSLY? Less than 25 words!")

			for w, c in pairs(word_freqs) do
				print(w .. "-" .. c)

		end,

		function(err)

			io.write("Something wrong: " .. err)
			io.write(debug.traceback())

		end)
