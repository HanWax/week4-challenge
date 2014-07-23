require_relative 'dish'

DEFAULT_CAPACITY = 20

class ShoppingBasket

	attr_accessor :dishes

	def initialize(capacity: DEFAULT_CAPACITY)
		@capacity 
	end 

	def dishes
		@dishes ||= []
	end 

	def capacity
		DEFAULT_CAPACITY
	end 

	def add(dish)
		dishes << dish	
	end 

	def remove(dish)
		raise 'There are no dishes to remove' if dishes.empty?
		dishes.delete(dish)
	end 

	def display_basket
	  	dishes.map {|dish| dish.display_dish}
	end

	def total_price
		dishes.map {|dish| dish.quantity * dish.price}.flatten.inject(:+)
	end 
end 