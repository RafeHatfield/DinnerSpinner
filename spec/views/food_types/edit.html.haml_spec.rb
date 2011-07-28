require 'spec_helper'

describe "food_types/edit.html.haml" do
  before(:each) do
    @food_type = assign(:food_type, stub_model(FoodType,
      :name => "MyString"
    ))
  end

  it "renders the edit food_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => food_types_path(@food_type), :method => "post" do
      assert_select "input#food_type_name", :name => "food_type[name]"
    end
  end
end
