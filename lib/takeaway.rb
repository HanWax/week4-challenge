require_relative 'customer'
require_relative 'dish'
require_relative 'shopping_basket'
require_relative 'confirmation_text'

class Takeaway

attr_accessor :customer 

	include ConfirmationText

	def initialize(customer)
		@customer = customer
	end

	def greeter
		puts "Welcome to Hotel California! Looks like you're going to be here for a while so you might as well eat. Take a look at our menu: "
	end 

	def goodbye
		"Thanks for ordering with us today. Your order will be with you within the hour"
	end 

	def check_order
		puts "Take a look at your basket before you checkout"
	end

	def text_confirmation
		send_confirmation_text(self.customer, message_body) 
	end

	def message_body
		"Hi #{self.customer.name}! Thanks for ordering with us today. Your order ID number is: #{self.customer.order_id}. Your order will be with you by 18:52."
	end 
end
	
# Steps that the programme should take:
# 1. Make a new customer
# 2. Greet the customer
# 3. Show the customer the menu
# 4. Select dish
# 5. Select quantity of dish
# 6. Ask customer if they would like to add anything else
# 7. Once basket is full, calculate total price
# 8. Confirm order
# 9. Send text 
# require_relative 'confirmation_text'
# require_relative 'customer'
# require_relative 'dish'
# require_relative 'menu'
# require_relative 'shopping_basket'
# require_relative 'takeaway'


# takeaway = Takeaway.new(Customer.new("Hannah", '+447988044884'))
# pizza = Dish.new('pizza', 5, 1)
# pasta = Dish.new('pasta', 4, 1)
# tuna  = Dish.new('tuna', 8, 1 )
# menu = Menu.new
# menu.add_to_menu(pizza)
# menu.add_to_menu(pasta)
# menu.add_to_menu(tuna) 
# takeaway.greeter
# menu.display_menu
# takeaway.customer.shopping_basket.add(pizza)
# takeaway.customer.shopping_basket.confirmed?
# takeaway.customer.shopping_basket.check_out
# takeaway.text_confirmation 
# takeaway.goodbye