FactoryGirl.define do
  factory :haggle do
    seller { FactoryGirl.create :user }
    buyer { FactoryGirl.create :user }
    status 1
    product { FactoryGirl.create :product }
  end
end
