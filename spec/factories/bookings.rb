# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :booking do
    vacancy_id 1
    user_id 1
    paypal_track_id "MyString"
    amount_paid 1.5
  end
end
