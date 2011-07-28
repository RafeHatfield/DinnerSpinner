require 'spec_helper'

describe "cuisines/index.html.haml" do
  before(:each) do
    assign(:cuisines, [
      stub_model(Cuisine,
        :restaurant_id => 1,
        :food_type_id => 1
      ),
      stub_model(Cuisine,
        :restaurant_id => 1,
        :food_type_id => 1
      )
    ])
  end

  it "renders a list of cuisines" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
