module Goods
	def load
		puts "#{self.class.name} load: (\##{self.object_id}): #{self.to_s}" 
	end

	def unload
		puts "#{self.class.name} unload: (\##{self.object_id}): #{self.to_s}" 
	end
end

class Vehicle
	attr_accessor :color
	attr_reader :year

	@@inherited = 2

	def initialize(year, color, model)
		@year = year
		@color = color
		@model = model
		@cur_spd = 0
	end

	def self.gas_milage
		puts "Calculating gas milage"
	end

	def self.get_inherited
		puts "#{@@inherited}"
	end

	def to_s
		"This car is #{@color}, model: #{@model}, manufactured at #{@year}, current speed: #{@cur_spd}"
	end

	def age
		return age_internal
	end

	def age_internal
		return Time.now.year - @year
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

	private :age_internal

end

class MyCar < Vehicle
	MY_CAR_CONSTANT = 1
end

class Truck < Vehicle
	include Goods

	TRUCK_CONSTANT = 2
end

truck = Truck.new(1999, "red", "buffalo")
#p Truck::TRUCK_CONSTANT

Vehicle.get_inherited
truck.load
truck.unload

p truck.age
p truck.age_internal
