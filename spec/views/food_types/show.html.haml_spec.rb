require 'spec_helper'

describe "food_types/show.html.haml" do
  before(:each) do
    @food_type = assign(:food_type, stub_model(FoodType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
