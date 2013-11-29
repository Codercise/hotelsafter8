# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :hotel do
    name "MyString"
    street "MyString"
    city "MyString"
    latitude 1.5
    longitude 1.5
    contact_name "MyString"
    contact_number "MyString"
    contact_email "MyString"
  end
end
