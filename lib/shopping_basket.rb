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

	def total_price
		dishes.map {|dish| dish.price}.flatten.inject(:+)
	end 
end 