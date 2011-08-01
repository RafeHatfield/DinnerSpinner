require 'spec_helper'

describe FoodType do
  
	context "validations" do
		
	  before(:each) do
	    @food_type = Factory.create(:food_type)
	  end
	
		it "should be valid with valid attributes"
		
		it "should be invalid with invalid attributes"
	
		it "should be able to have a cuisine"
	
		it "should be able to have restaurants"
		
		it "should require a name"
	
	end
	
end
