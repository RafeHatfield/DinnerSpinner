require 'spec_helper'

describe "restaurants/show.html.haml" do
  before(:each) do
    @restaurant = assign(:restaurant, stub_model(Restaurant,
      :name => "Name",
      :description => "MyText",
      :address1 => "Address1",
      :address2 => "Address2",
      :suburb => "Suburb",
      :postcode => "Postcode",
      :open_lunch => false,
      :open_dinner => false,
      :open_breakfast => false,
      :takeaway => false,
      :deliver => false,
      :eatin => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address2/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Suburb/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Postcode/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
