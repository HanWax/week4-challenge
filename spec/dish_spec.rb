require 'dish'
	describe Dish do 

let(:dish) {Dish.new('Pizza', 5)}

 		it 'should be initialised with a name' do
 			expect(dish.name).to eq 'Pizza'
		end 

		it 'should be initialised with a price' do 
			expect(dish.price).to eq 5
		end 

		it 'should be displayed nicely' do 
			expect(dish.display_dish).to eq 'Pizza' + " " + '£5'
			
		end 
		
	end 


