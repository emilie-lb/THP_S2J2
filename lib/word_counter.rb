dictionnary  = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def compare_string_to_dictionnary(string, dictionnary)
	word_in_dictionnary_array =[]
	dictionnary.each do |word|
		if string.downcase.match?(word) == true
			word_in_dictionnary_array << word
		end
	end
	return word_in_dictionnary_array
end	

def hash_add(hash, key)
	if (hash.key?(key))
		hash[key] += 1
	else
		hash[key] = 1
	end
end

def word_counter(string, dictionnary)
	word_counter_hash = {}
	word_of_string_array = string.split

	word_of_string_array.each do |word| 
		word_in_dictionnary_array = compare_string_to_dictionnary(word, dictionnary)
		word_in_dictionnary_array.each do |word|
			hash_add(word_counter_hash, word)
		end
	end
	return word_counter_hash.sort_by {|k, v| k}.to_h
end	

#puts word_counter("Below", dictionnary)
#word_counter("Howdy partner, sit down! How's it going?", dictionnary)
