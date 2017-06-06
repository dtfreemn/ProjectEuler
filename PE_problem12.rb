def make_triangle(number)
	start = 0
	triangle = 0
	while start <= number
		triangle += start
		start += 1
	end	
	triangle
end 

def count_divisors(number)
	start = 1
	count = 0
	max = Math.sqrt(number).round

	while start <= max
		if number % start == 0
			count += 2
		end

		if max * max == number
			count -= 1
		end

		start += 1
	end
	count
end

def count_500_divisors(number)
	triangle = make_triangle(number)
	count = count_divisors(triangle)
	while count < 500
		number += 1
		triangle = make_triangle(number)
		count = count_divisors(triangle)
	end

	puts triangle
end

count_500_divisors(1)