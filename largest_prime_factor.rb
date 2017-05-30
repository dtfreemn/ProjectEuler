require 'prime'

def largest_prime_factor
	numbers = (1..(Math.sqrt(600851475143).round)).to_a
	factors = []
	numbers.each do |num|
		if 600851475143 % num == 0
			factors << num
		end
	end
	lpf = 0
	factors.each do |num|
		if num > 1 && Prime.prime?(num)
			lpf = num
		end
	end
	puts lpf
end

largest_prime_factor