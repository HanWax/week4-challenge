class Dish

attr_accessor :name, :price 

	def initialize(name, price)
		@name = name
		@price = price
	end 

	def display_dish
	  	return "#{@name.capitalize} £#{@price}"
	end
end 