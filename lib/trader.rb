def trader_delta(array)
	min = array.min
	index_min = array.index(min)
	new_array = array[index_min..]
	max = new_array.max
	index_max = array.index(max) #à réssoudre = pb quand même valeur que max avant jour min. Il faudrait arriver à récupérer index(max) après index(min)
	delta_values = max - min

	return hash_results = {
			:index_min => index_min, 
			:index_max => index_max,
			:delta_values => delta_values}
end

def trader(array)
	delta_values_hash = {}
	array_init = array.clone

	i=0
	array.length.times do
		delta_values_hash[i] = trader_delta(array)
		array.delete_at(array.index(array.min))
		i+=1
	end

	hash_plusvalue = delta_values_hash.max_by{|k, v| v[:delta_values]}.last
	index_buy = hash_plusvalue[:index_min]
	index_sold = hash_plusvalue[:index_max]
	puts "Acheter jour #{index_buy + 1} à #{array_init[index_buy]}$"
	puts "Vendre jour #{index_sold + 1} à #{array_init[index_sold]}$"
	puts "Plus-value: #{hash_plusvalue[:delta_values]}$"
end	

=begin
trader([17, 3, 6, 1, 15, 8, 6, 1, 10])
puts "uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu"
trader([7, 4, 5, 9, 12])
puts"ttttttttttttttttttttttttttttttttttttttttttttttttttt"
trader([7, 9, 5, 4, 18, 7, 3, 1, 2, 7, 6, 25, 5])
=end