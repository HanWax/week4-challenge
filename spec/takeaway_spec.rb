require 'takeaway' 

describe Takeaway do 

	let(:takeaway)        {Takeaway.new (Customer.new('Hannah', '+00'))}
	let(:shopping_basket) {double :shopping_basket, confirmed?: true   }   
	let(:pizza)           {Dish.new('pizza', 2, 3                     )}

	context 'upon initialisation' do 
		it 'should initialise with a customer' do 
			expect(takeaway.customer.is_a?Customer).to be true
		end 
	end

		it 'should greet the customer' do 
			allow(takeaway.greeter).to receive(:puts).and_return("Welcome to Cafe Hannah! I'm sure you're hungry so let's get started with your order")	
		end 

	context 'confirming the order' do 

		it 'should confirm order and price with customer' do 
			allow(takeaway.check_order).to receive(:puts)
		end 
	end
end