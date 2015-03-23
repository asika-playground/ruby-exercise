def check_range(num)
	if num < 0
		puts num.to_s + " < 0"
	elsif num > 0 and num <=50
		puts "0 < "+ num.to_s + " <= 50"
	elsif num > 50 and num <= 100
		puts "50 < "+ num.to_s + " <= 100"
	else
		puts "100 <= "+ num.to_s
	end
end


puts check_range(-1)
puts check_range(10)
puts check_range(60)
puts check_range(110)
