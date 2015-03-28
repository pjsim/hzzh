require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:product) { build :product }
  subject { product }
  it { should be_valid }

  it { should respond_to :title }
  it { should respond_to :description }
  it { should respond_to :price }
  it { should respond_to :user }
  it { should respond_to :haggles }

  it { should validate_presence_of :title }
  it { should validate_presence_of :user_id }

  it { should belong_to :user }
  it { should have_many :haggles }
end
