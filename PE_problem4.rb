def larg_pal_prod
	nums = (100..999).to_a
	nums2 = (100..999).to_a
	pals = []

	nums.each do |num|
		nums2.each do |num2|
			product = num * num2
			if product.to_s == product.to_s.reverse
				pals << product
			end
		end
	end	

	puts pals.max

end

larg_pal_prod