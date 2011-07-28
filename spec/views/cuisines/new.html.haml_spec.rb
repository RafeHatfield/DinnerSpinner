require 'spec_helper'

describe "cuisines/new.html.haml" do
  before(:each) do
    assign(:cuisine, stub_model(Cuisine,
      :restaurant_id => 1,
      :food_type_id => 1
    ).as_new_record)
  end

  it "renders new cuisine form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cuisines_path, :method => "post" do
      assert_select "input#cuisine_restaurant_id", :name => "cuisine[restaurant_id]"
      assert_select "input#cuisine_food_type_id", :name => "cuisine[food_type_id]"
    end
  end
end
