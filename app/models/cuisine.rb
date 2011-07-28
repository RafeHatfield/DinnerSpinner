class Cuisine < ActiveRecord::Base
	
	belongs_to :restaurant
	belongs_to :food_type
	
end
