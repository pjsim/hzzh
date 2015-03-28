FactoryGirl.define do
  factory :product do
    title { Faker::Commerce.product_name }
    description { Faker::Lorem.sentence }
    price { Faker::Commerce.price }
    user { FactoryGirl.create :user }
  end
end
