require 'spec_helper'

describe Restaurant do
	
	context "validations" do
		
	  before(:each) do
	    @restaurant = Factory.create(:restaurant)
	  end
	
    it "should be valid with valid attributes" do
      @restaurant.should be_valid
    end

		it "should be able to have cuisines"

		it "should be able to have food types"
		
		it "should require a name"
		
		it "should be able to have a description"

		it "should not be valid with invalid attributes"

	end

end
