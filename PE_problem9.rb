def isPrime?(number)
	prime = false

	if number <= 0 || number == 1
		prime = false
	end

	if number == 2 || number == 3
		prime = true
	end

	if number > 2
		max = Math.sqrt(number).round
		check = 2
		while check <= max
			if number % check == 0
				prime = false
				check += 1
				break
			else
				prime = true
				check += 1
			end
		end
	end
	prime
end

def sum_primes_to_2_million
	count = 0
	number = 0
	primes = []

	while count < 2000000
		if isPrime?(number)
			primes << number
		end
		number += 1
		count += 1
	end

	sum = 0
	primes.each do |n|
		sum += n
	end
	puts sum
end

sum_primes_to_2_million
