require 'shopping_basket'

describe ShoppingBasket do 

	let(:shopping_basket) {ShoppingBasket.new     }    
	let(:pizza)           {Dish.new('pizza', 4, 2)}
	let(:pasta)           {Dish.new('pasta', 3, 2)}

	context 'upon initialisation' do 

		it 'should be empty when created' do 
			expect(shopping_basket.shopping_basket).to be_empty
		end 

		it 'should be initialised with a set capacity' do 
			expect(shopping_basket.capacity).to eq DEFAULT_CAPACITY
		end 
	end 

	context 'adding and removing dishes' do 

		it 'should allow customers to add dishes to it' do 
			shopping_basket.add(pizza)
			expect(shopping_basket.shopping_basket[0]).to be_an_instance_of Dish
		end 

		it 'should be full when it has reached capacity' do 
			DEFAULT_CAPACITY.times {shopping_basket.add(pizza)}
			expect(shopping_basket).to be_full
		end 

		it 'should not allow customers to add more than twenty dishes' do 
			DEFAULT_CAPACITY.times {shopping_basket.add(pizza)}
			expect(shopping_basket).to be_full
			expect{shopping_basket.add(pizza)}.to raise_error(RuntimeError)
		end 

		it 'should allow customers to remove dishes from it' do 
			shopping_basket.add(pizza)
			shopping_basket.remove(pizza)
			expect(shopping_basket.shopping_basket).to be_empty
		end

		it 'should not allow customers to remove dishes that have not been added' do 
			expect{ shopping_basket.remove(pizza) }.to raise_error(RuntimeError)
		end 
	end

	context 'formatting basket contents' do 

		it 'should be able to display the basket' do 
			shopping_basket.add(pizza)
			shopping_basket.add(pasta)
			expect(shopping_basket.display_basket).to eq ['Pizza' + " " + '£4', 'Pasta' + " " + '£3']
		end 

		it 'should calculate the total price of the items in the basket' do 
			shopping_basket.add(pizza)
			shopping_basket.add(pasta)
			expect(shopping_basket.total_price).to eq 14 
		end 
	end

	context 'checking out' do 

		it 'will not checkout if order is not confirmed' do 
			shopping_basket.confirmed? == false 
			expect{shopping_basket.checkout}.to raise_error(RuntimeError)
		end 

		it 'will not checkout if shopping basket is empty' do 
			shopping_basket.shopping_basket
			expect{shopping_basket.checkout}.to raise_error(RuntimeError)
		end 
	end 

end 