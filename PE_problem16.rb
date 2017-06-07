def calculate_exponent(number, exponent)
	final = number ** exponent
	final
end

def split_number(number)
	array = number.to_s.split('').map(&:to_i)
	array
end

def sum_digits(array)
	sum = 0
	array.each do |n|
		sum = (sum + n)
	end
	puts sum
end

sum_digits(split_number(calculate_exponent(2,1000)))