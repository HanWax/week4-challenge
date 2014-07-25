class Dish

	DEFAULT_QUANTITY = 1

attr_accessor :name, :price, :quantity 

	def initialize(name, price, quantity = DEFAULT_QUANTITY)
		@name = name
		@price = price
		@quantity = quantity
	end 

	def display_dish
	  	return "#{@name.capitalize} £#{@price}"
	end

	def display_name
		@name 
	end 
end 