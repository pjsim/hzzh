FactoryGirl.define do
  factory :offer do
    intention 1
    price { Faker::Commerce.price }
    haggle { FactoryGirl.create :haggle }
    user { FactoryGirl.create :user }
  end
end
