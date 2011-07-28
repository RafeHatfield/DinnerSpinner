require 'spec_helper'

describe "cuisines/show.html.haml" do
  before(:each) do
    @cuisine = assign(:cuisine, stub_model(Cuisine,
      :restaurant_id => 1,
      :food_type_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
