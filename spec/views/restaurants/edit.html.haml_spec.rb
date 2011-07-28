require 'spec_helper'

describe "restaurants/edit.html.haml" do
  before(:each) do
    @restaurant = assign(:restaurant, stub_model(Restaurant,
      :name => "MyString",
      :description => "MyText",
      :address1 => "MyString",
      :address2 => "MyString",
      :suburb => "MyString",
      :postcode => "MyString",
      :open_lunch => false,
      :open_dinner => false,
      :open_breakfast => false,
      :takeaway => false,
      :deliver => false,
      :eatin => false
    ))
  end

  it "renders the edit restaurant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => restaurants_path(@restaurant), :method => "post" do
      assert_select "input#restaurant_name", :name => "restaurant[name]"
      assert_select "textarea#restaurant_description", :name => "restaurant[description]"
      assert_select "input#restaurant_address1", :name => "restaurant[address1]"
      assert_select "input#restaurant_address2", :name => "restaurant[address2]"
      assert_select "input#restaurant_suburb", :name => "restaurant[suburb]"
      assert_select "input#restaurant_postcode", :name => "restaurant[postcode]"
      assert_select "input#restaurant_open_lunch", :name => "restaurant[open_lunch]"
      assert_select "input#restaurant_open_dinner", :name => "restaurant[open_dinner]"
      assert_select "input#restaurant_open_breakfast", :name => "restaurant[open_breakfast]"
      assert_select "input#restaurant_takeaway", :name => "restaurant[takeaway]"
      assert_select "input#restaurant_deliver", :name => "restaurant[deliver]"
      assert_select "input#restaurant_eatin", :name => "restaurant[eatin]"
    end
  end
end
