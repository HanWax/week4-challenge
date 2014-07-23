require 'menu'

	describe Menu do 
		
		let(:menu) {Menu.new}
		let(:pizza) {Dish.new('pizza', 6, 1)}
		let(:pasta) {Dish.new('pasta', 7, 1)}
		let(:tuna) {Dish.new('tuna', 8, 1)}

	context 'upon initialisation' do 

		it 'should contain an empty menu list upon initialisation' do 
			expect(menu.menu_list).to be_empty
		end 

	end

	context 'adding and removing dishes' do 

		it 'should be able to add dishes' do 
			menu.add_to_menu(pizza)
			expect(menu.menu_list[0].is_a?Dish).to be true
		end 

		it 'should be able to remove dishes' do 
			menu.add_to_menu(pizza)
			menu.remove_from_menu(pizza)
			expect(menu.menu_list).to be_empty
		end

		it 'cannot remove dishes that are not there' do 
			expect{ menu.remove_from_menu(pizza) }.to raise_error(RuntimeError)
		end 

		it 'should be able to contain more than one dish' do 
			menu.add_to_menu(pizza)
			menu.add_to_menu(pasta)
			expect(menu.menu_list.length).to eq 2
		end 
	end 

	context 'displaying' do 

		it 'should be able to display the menu' do 
			menu.add_to_menu(pizza)
			menu.add_to_menu(pasta)
			menu.add_to_menu(tuna)
			expect(menu.display_menu).to eq ['Pizza' + " " + '£6', 'Pasta' + " " + '£7', 'Tuna' + " " + '£8' ]
		end 

	end
end
 