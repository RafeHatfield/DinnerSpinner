require 'spec_helper'

describe "food_types/new.html.haml" do
  before(:each) do
    assign(:food_type, stub_model(FoodType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new food_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => food_types_path, :method => "post" do
      assert_select "input#food_type_name", :name => "food_type[name]"
    end
  end
end
