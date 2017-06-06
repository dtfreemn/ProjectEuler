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


def prime1001?
	count = 0
	number = 0
	prime = false

	while count < 10001
		puts "Checking if #{number} is prime"
		prime = isPrime?(number)
		if prime == true
			count +=1
			puts "#{number} is the #{count} prime number"
		end
		number += 1
	end
end

prime1001?