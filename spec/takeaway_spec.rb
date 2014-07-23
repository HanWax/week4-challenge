require 'takeaway' 

describe Takeaway do 
	let(:takeaway) {Takeaway.new}


	it 'should greet the customer' do 
		allow(takeaway.greeter).to receive(:puts).and_return("Welcome to Cafe Hannah! I'm sure you're hungry so let's get started with your order")	
	end 

	
end