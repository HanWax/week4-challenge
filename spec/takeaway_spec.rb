require 'takeaway' 

describe Takeaway do 
	let(:takeaway) {Takeaway.new}
	let(:customer) {double :customer}
	let(:shopping_basket) {double :shopping_basket}

	it 'should greet the customer' do 
		allow(takeaway.greeter).to receive(:puts).and_return("Welcome to Cafe Hannah! I'm sure you're hungry so let's get started with your order")	
	end 

	
end