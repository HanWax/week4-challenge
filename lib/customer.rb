require_relative 'shopping_basket'
require_relative 'confirmation_text'
require_relative 'dish'

class Customer

	include ConfirmationText

	attr_accessor :shopping_basket, :name, :phone_number

	def initialize(name, phone_number)
		@shopping_basket = ShoppingBasket.new 
		@name = name
		@phone_number = phone_number
		@order_id = order_id
	end 

	def order_id
		rand(10000..20000)
	end
end 


