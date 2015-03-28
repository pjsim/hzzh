require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build :user }
  subject { user }
  it { should be_valid }

  it { should have_many :products }
  it { should have_many :seller_haggles }
  it { should have_many :buyer_haggles }
  it { should have_many :offers }
end
