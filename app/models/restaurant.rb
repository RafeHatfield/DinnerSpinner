class Restaurant < ActiveRecord::Base
	
	has_many :cuisines
	has_many :food_types, :through => :cuisines
	
end
