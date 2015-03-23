class Vehicle
	attr_accessor :color
	attr_reader :year

	def initialize(year, color, model)
		@year = year
		@color = color
		@model = model
		@cur_spd = 0
	end

	def self.gas_milage
		puts "Calculating gas milage"
	end

	def to_s
		"This car is #{@color}, model: #{@model}, manufactured at #{@year}, current speed: #{@cur_spd}"
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

class MyCar < Vehicle
	MY_CAR_CONSTANT = 1
end

class Truck < Vehicle
	TRUCK_CONSTANT = 2
end

truck = Truck.new(1999, "red", "buffalo")
p Truck::TRUCK_CONSTANT
