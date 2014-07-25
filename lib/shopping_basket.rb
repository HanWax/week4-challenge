require_relative 'dish'

DEFAULT_CAPACITY = 20

class ShoppingBasket

	attr_accessor :dishes

	def initialize(capacity: DEFAULT_CAPACITY)
		@capacity 
	end 

	def shopping_basket
		@shopping_basket ||= []
	end 

	def capacity
		DEFAULT_CAPACITY 
	end 

	def full?
		shopping_basket.length == capacity 
	end 

	def add(dish)
		raise 'Your basket is full! Please call us on 0800 118 118 if you would like a larger order' if full? 
		shopping_basket << dish	
	end 

	def remove(dish)
		raise 'There are no dishes to remove' if shopping_basket.empty?
		shopping_basket.delete(dish)
	end 

	def display_basket
	  	shopping_basket.map {|dish| dish.display_dish}
	end

	def total_price
		shopping_basket.map {|dish| dish.quantity * dish.price}.flatten.inject(:+)
	end 

	def confirmed?
		puts "Please enter 'Yes' if everything is correct"
		true if gets.chomp.downcase == "yes"
	end

	def checkout
		raise 'You cannot checkout until you confirm your order' if !confirmed?
		raise 'There is nothing in your basket yet' if shopping_basket.empty? 
		puts "You may now proceed to checkout"
	end 
end 