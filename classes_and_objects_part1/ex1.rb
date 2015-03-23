class MyCar
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
end

car = MyCar.new(2015, "yellow", "Tesla-S")
car.spd_up
car.spd_up
car.brake
car.shutoff
