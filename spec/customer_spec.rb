require 'customer'

	describe Customer do 

		let(:customer)        {Customer.new      }
		let(:shopping_basket) {ShoppingBasket.new}
		let(:menu)            {double :menu      }

		it 'should initialize with an empty shopping basket' do 
			expect(customer.shopping_basket.is_a?(ShoppingBasket)).to be true
		end 

		# it 'should be able to select a dish from the menu' do 
		# 	expect(:menu).to receive(:add_dish_to(menu)).and return()
		# 	customer.select_dish_from(menu)
		# 	expect
		# end

		it 'should be able to add more than one item into the shopping basket' do
		end

	end 