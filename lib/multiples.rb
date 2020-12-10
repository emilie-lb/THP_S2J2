
def is_multiple_of_3_or_5?(n)
	n%3 == 0 || n%5 == 0 ? true : false
end	


def sum_of_3_or_5_multiples(n)
	sum = 0
	if n.is_a?(Integer) && n >= 0
		(0...n).each do |current_number|
			sum += current_number if is_multiple_of_3_or_5?(current_number) == true  
		end
		return sum
	else
		return "Erreur! je ne prends que les entiers naturels."
	end	
end	

=begin
puts sum_of_3_or_5_multiples(10)
puts sum_of_3_or_5_multiples(11)
puts sum_of_3_or_5_multiples(0)
puts sum_of_3_or_5_multiples(3)
puts sum_of_3_or_5_multiples(-1)
puts sum_of_3_or_5_multiples(1.23)
puts sum_of_3_or_5_multiples("chiffre")
=end