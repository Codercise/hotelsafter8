# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :room do
    hotel_id 1
    description "MyString"
    beds 1
  end
end
