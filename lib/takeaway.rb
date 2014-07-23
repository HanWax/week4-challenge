class Takeaway

	def greeter
		puts "Welcome to Cafe Hannah! I'm sure you're hungry so let's get started with your order. Have a look at our menu:"
	end 

	def goodbye
		"Thanks for ordering with us today. Your order will be with you within the hour"
	end 
end
	

		def takeaway_engine
		  	takeaway.greeter
		  	@menu.display_menu
		  	@shopping_basket.select(dish)
		  	@dish.quantity
		  	checkout
		  	takeaway.goodbye
		  	customer.text_confirmation
	  end
	

  

  