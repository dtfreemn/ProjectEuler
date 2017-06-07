def n_is_even(n)
	n = n/2
	n
end

def n_is_odd(n)
	n = ((3 * n) + 1)
	n
end

def longest_chain(maximum)
	max = maximum
	chain = 1
	n = 1
	step = 1
	long_chain = 0
	long_chain_num = 0

	while step < max

		if n == 1
			chain += 1
			if chain > long_chain
				long_chain = chain
				long_chain_num = step
				puts "The number with the longest chain of #{long_chain} is now #{long_chain_num}"
				chain = 1
			else
				#puts "This chain is shorter than the longest chain"
				#puts "The number with the longest chain is still #{long_chain_num}"
				chain = 1
			end
			step += 1
			n = step
		elsif n % 2 == 0
			n = n_is_even(n)
			chain += 1
			#puts "#{step}'s chain is now #{chain}"
		elsif n % 2 != 0
			n = n_is_odd(n)
			chain += 1
			#puts "#{step}'s chain is now #{chain}"
		end
	end
end

longest_chain(1000000)