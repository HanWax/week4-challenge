require_relative 'shopping_basket'
require_relative 'dish'
require_relative 'confirmation_text'

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

	def check_order
		puts "Take a look at your basket before you checkout"
	end

	def confirmed?
		puts "Please enter 'Yes' if everything is correct"
		answer = gets.chomp
		true if answer.downcase == "yes"
	end

	def text_confirmation
		send_confirmation_text(self, message_body) if confirmed? 
	end

	def message_body
		"Your order ID number is: #{order_id}. Your order will be on it's way shortly."
	end 

	def checkout
		raise 'You cannot checkout until you confirm your order' if !confirmed?
		@shopping_basket.display_basket
		check_order
		text_confirmation 
	end 
end 


