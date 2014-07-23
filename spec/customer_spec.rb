require 'customer'

	describe Customer do 

		let(:customer)        {Customer.new('Hannah', "+447988044884")  }
		let(:shopping_basket) {ShoppingBasket.new                       }
		let(:takeaway)        {double :takeaway, confirmed?: true       }

	context 'upon initialisation' do 

		it 'should initialize with an empty shopping basket' do 
			expect(customer.shopping_basket.is_a?(ShoppingBasket)).to be true
		end 

		it 'should initialize with a name' do
			expect(customer.name).to eq 'Hannah' 
		end 

		it 'should initialize with a phone number' do 
			expect(customer.phone_number).to eq "+447988044884"
		end 

		it 'should be assigned an order number' do 
			allow(customer).to receive(:order_id).with(:rand).and_return(10000..20000)
		end

	end

	context 'confirming the order' do 

		it 'should confirm order and price with customer' do 
			allow(customer.check_order).to receive(:puts)
		end 

		it 'should be confirmed by the customer' do 
			expect(takeaway).to be_confirmed
		end 

		it 'should send a confirmation text' do 
			takeaway.confirmed?
			allow(customer).to receive(:send_confirmation_text)
		end 
	end
end 