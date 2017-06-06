def smallest_multiple
	max = 20
	start = 1
	number = 1
	small_mult = 0

	while start <= max
		if start == max
			small_mult = number
			start += 1
		elsif number % start == 0
			start += 1
		else
			start = 1
			number +=1
		end
	end
	puts small_mult
end

smallest_multiple
