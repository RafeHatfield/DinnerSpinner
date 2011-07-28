class FoodType < ActiveRecord::Base
	
	has_many :cuisines
	has_many :restaurants, :through => :cuisines
	
end
