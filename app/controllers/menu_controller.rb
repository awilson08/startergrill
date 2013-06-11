class MenuController < ApplicationController

	def index
		
		@appetizers = MenuItem.find_all_by_category("Appetizer")
		@entrees = MenuItem.find_all_by_category("Entree")
		@drinks = MenuItem.find_all_by_category("Drink")
		@desserts = MenuItem.find_all_by_category("Dessert")
	end

end
