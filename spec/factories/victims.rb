# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :victim do
    name              { Faker::Internet.user_name }
    telephone_number  { ([*[*0..9]*5].shuffle[0..9].join) }
  end
end
