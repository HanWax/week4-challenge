# require 'takeaway' 

# describe Takeaway do 
# 	let(:takeaway) {Takeaway.new}
# 	let(:customer) {double :customer}

# 	it 'should greet the customer' do 
# 		takeaway.greet
# 		expect(takeaway.greet).to receive(:puts)
# 		expect(takeaway.greet).to receive(:gets).with(:self)
# 	end 

# 	it 'should assign the customer an order number' do 
# 		expect(takeaway.order_number).to receive(:rand)
# 	end 

# 	it 'should let the customer select items to order' do 
# 	end 

# 	it 'should allow the customer to specify quantity' do 
# 	end 

# 	it 'should be able to calculate the price of the order' do 
# 	end 

# 	it 'should confirm order and price with customer' do 
# 	end 

# 	it 'should send a confirmation text' do 
# 	end 
	
# end