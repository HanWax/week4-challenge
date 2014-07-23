require 'shopping_basket'

describe ShoppingBasket do 

	let(:shopping_basket) {ShoppingBasket.new}

	it 'should be empty when created' do 
		expect(shopping_basket.dishes).to be_empty
	end 

	it 'should be initialised with a set capacity' do 
		expect(shopping_basket.capacity).to eq DEFAULT_CAPACITY
	end 

	it 'should allow customers to add dishes to it' do 
		pizza = Dish.new('pizza', 3)
		shopping_basket.add(pizza)
		expect(shopping_basket.dishes[0]).to be_an_instance_of Dish
	end 

	it 'should calculate the total price of the items in the basket' do 
		pizza = Dish.new('pizza', 4)
		pasta = Dish.new('pasta', 3)
		shopping_basket.add(pizza)
		shopping_basket.add(pasta)
		expect(shopping_basket.total_price).to eq 7 
	end 


end 