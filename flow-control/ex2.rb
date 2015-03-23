def changecase(string)
	if string.length > 10
		return string.upcase
	else
		return string
	end
end

puts "abcdefghijk ==>"+ changecase("abcdefghijk")
puts "abcdef ==>"+ changecase("abcdef")
