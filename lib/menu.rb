require_relative 'dish'

class Menu

	attr_accessor :menu_list

	def menu_list
		@menu_list ||= []
	end 

	def add_to_menu(dish)
		menu_list << dish
	end 

	def display_menu
	  	menu_list.map {|dish| dish.display_dish}
	end
end
