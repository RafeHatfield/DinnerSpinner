# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
	
  factory :restaurant do
	  name "To Wong Foo"
	  description "Awesome Korean"
	  address1 "1 Here St"
	  address2 "Address 2"
	  suburb "There"
	  postcode "ZZZZZZ"
	  open_lunch false
	  open_dinner false
	  open_breakfast false
	  takeaway false
	  deliver false
	  eatin false
	end
	
	factory :food_type do
		name "Korean"
	end
	
  factory :cuisine do
    restaurant
		food_type
  end

end