def even_fibonaccis
	sum = 0
	fibonacci_array = [1,2]
	max_check = 0
	while fibonacci_array.last < 4000000
		fibonacci_array << (fibonacci_array[-1] + fibonacci_array[-2])
		max_check = fibonacci_array.last
	end
	fibonacci_array.pop
	fibonacci_array.each do |num|
		if num.even?
			sum += num
		end
	end
	puts sum
end

even_fibonaccis