def sum_square_diff(max)
	array1 = (1..max).to_a
	array2 = (1..max).to_a
	output = 0

	sum_of_squares_sum = 0
	sum_of_squares = array1.collect do |num|
		sum_of_squares_sum += (num**2)
	end

	square_of_sum_sum = 0
	square_of_sum = array2.collect do |num|
		square_of_sum_sum += num
	end
	square_of_sum_sum = square_of_sum_sum**2

	output = (square_of_sum_sum - sum_of_squares_sum)

	puts output

end

sum_square_diff(100)