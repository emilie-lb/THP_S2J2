def ceasar_cipher_letter(l, n)
	if (65..90).include?(l.ord) || (97..122).include?(l.ord)
		new_code_letter = l.ord + n
		if (65..90).include?(new_code_letter) == false && (97..122).include?(new_code_letter) == false
			new_code_letter -= 26
		end
		return new_code_letter.chr
	else
		return l
	end
end

def ceasar_cipher(string, n)
	string_array = string.split(//)
	new_code_string_array = []
	string_array.map {|l| new_code_string_array << ceasar_cipher_letter(l, n)}
	return new_code_string_array.join
end

=begin
puts ceasar_cipher("What a string!", 5)
puts ceasar_cipher_letter("W", 3)
puts ceasar_cipher_letter("Z", 3)
puts ceasar_cipher_letter("!", 3)
=end