# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    city "MyString"
    state "MyString"
    country "MyString"
    latitude 1.5
    longitude 1.5
  end
end
