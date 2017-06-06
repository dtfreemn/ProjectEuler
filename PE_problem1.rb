def multiples_3_and_5
	sum = 0
	numbers = (1...1000).to_a
	numbers.each do |num|
		if num % 3 == 0 || num % 5 == 0
			sum += num
		end
	end
	puts sum
end

multiples_3_and_5