class MyCar
	attr_accessor :color
	attr_reader :year

	def initialize(year, color, model)
		@year = year
		@color = color
		@model = model
		@cur_spd = 0
	end

	def spd_up
		@cur_spd += 1
		puts "current speed="+ @cur_spd.to_s
	end

	def brake
		@cur_spd -= 1
		puts "current speed="+ @cur_spd.to_s
	end

	def shutoff
		@cur_spd = 0
		puts "current speed="+ @cur_spd.to_s
	end

	def spray_paint(new_color)
		@color = new_color
		puts "painting with #{new_color}"
	end
end

car = MyCar.new(2015, "yellow", "Tesla-S")
car.spd_up
car.spd_up
car.brake
car.shutoff
p car.color
car.color = "blue"
p car.color
p car.year
#car.year = "1999"
car.spray_paint("red")
p car.color
