class Drink
	#state of the temperature, because it could be in any drinks.
	attr_accessor :temperature 

	def intialize
		puts "I'm initializing"
	end

	def pour
		puts "I'm pouring a drink"
	end
end

class Coffee < Drink
	
	attr_accessor :roast

	def initialize(roast)

		puts "I'm initializing coffee."
		@roast = roast #(roast is an instance)
	end
	

	def grind
		puts "I'm grinding Coffee"
	end

	def pour
		super
		puts "I'm pouring Coffee"
	end
end

espresso = Coffee.new("Arabica")
puts espresso.roast


# espresso.pour 
# espresso.grind
 
# espresso = Drink.new

# espresso.temperature = 100

# espresso.roast = "Arabia"