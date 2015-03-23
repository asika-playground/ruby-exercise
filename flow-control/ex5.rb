def check_range(num)
	case num
	when 0..50 
		puts "0 < "+ num.to_s + " <= 50"
	when 50..100 
		puts "50 < "+ num.to_s + " <= 100"
	else
		puts "100 <= "+ num.to_s
	end
end

puts check_range(10)
puts check_range(60)
puts check_range(110)
