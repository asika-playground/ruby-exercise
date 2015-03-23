def separate(number)
	number = number.to_i

	retval = []
	for i in (1..3).reverse_each
		q = number/(10**i)
		number -= q*(10**i)
		retval.push(q)
	end
	retval.push(number % 10)

	puts "retval="+ retval.to_s
	return retval
end

puts "Enter a four-digit number:"
separate(gets)
