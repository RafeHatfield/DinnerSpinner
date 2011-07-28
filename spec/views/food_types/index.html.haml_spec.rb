require 'spec_helper'

describe "food_types/index.html.haml" do
  before(:each) do
    assign(:food_types, [
      stub_model(FoodType,
        :name => "Name"
      ),
      stub_model(FoodType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of food_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
