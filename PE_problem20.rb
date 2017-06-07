#argument!
def factorial(number)
	i = (number - 1)
	number_factorial = 0
	until i == 1
		number = number * i
		i -= 1
	end

	number_factorial = number

	puts number_factorial
	number_factorial

end

#take return value from factorial and split it into an array of numbers
#to be summed by later function
def split_number(number)
	array = number.to_s.split('').map(&:to_i)

	puts array
	array
end

#add the digits of the arrayed number
def sum_digits(array)
	sum = 0
	array.each do |n|
		sum += n
	end

	puts sum
	sum

end


sum_digits(split_number(factorial(100)))