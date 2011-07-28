require 'spec_helper'

describe "restaurants/index.html.haml" do
  before(:each) do
    assign(:restaurants, [
      stub_model(Restaurant,
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
      ),
      stub_model(Restaurant,
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
      )
    ])
  end

  it "renders a list of restaurants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Suburb".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Postcode".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
