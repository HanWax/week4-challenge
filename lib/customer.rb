require_relative 'shopping_basket'

class Customer

	attr_accessor :shopping_basket

	def initialize
		@shopping_basket = ShoppingBasket.new 
	end 

	def select(dish)
		@shopping_basket << menu_item
	end 

end 