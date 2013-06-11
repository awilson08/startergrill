class MenuItem < ActiveRecord::Base
  attr_accessible :category, :description, :name, :price
end
