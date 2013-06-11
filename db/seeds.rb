# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all


item = [	
	{:category => "Appetizer" ,:name => "Tiny Hot Dogs", :price => 7, :description => "Can't eat just one. Who came up with this idea, anyway?"},
	{:category => "Appetizer" ,:name => "Onion Strands", :price => 5, :description => "Like onion rings, only different."},
	{:category => "Appetizer" ,:name => "Flatbread", :price => 6, :description => "As flat as we can make it, so we can save some dough."},
	{:category => "Entree" ,:name => "Steak", :price => 27, :description => "The best steak this side of Hubbard St."},
	{:category => "Entree" ,:name => "Aha Tuna Plate", :price => 17, :description => "Learn something new with every bite."},
	{:category => "Entree" ,:name => "Chicken Ceasar Salad", :price => 22, :description => "Fresh lettuce, grilled chicken, and ceaser dressing on the side."},
	{:category => "Drink" ,:name => "Soft Drinks", :price => 5, :description => "Who are we kidding? We only serve iced tea."},
	{:category => "Drink" ,:name => "Beer", :price => 6, :description => "Want your favorite local brew? Too bad. We don't have it."},
	{:category => "Dessert" ,:name => "Strawberry Cheesecake", :price => 8, :description => "The best cheesecake in Chicago."},
	{:category => "Dessert",:name => "M&M's", :price => 6, :description => "Plain or peanut."}
]

MenuItem.destroy_all
item.each do |item_hash|
	i= MenuItem.new
	i.category = item_hash[:category]
	i.name = item_hash[:name]
	i.price = item_hash[:price]
	i.description = item_hash[:description]
	i.save
end