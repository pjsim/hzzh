require 'rails_helper'

RSpec.describe Haggle, type: :model do
  let(:haggle) { build :haggle }
  subject { haggle }
  it { should be_valid }

  it { should respond_to :seller }
  it { should respond_to :buyer }
  it { should respond_to :status }
  it { should respond_to :product }
  it { should respond_to :offers }

  it { should validate_presence_of :seller_id }
  it { should validate_presence_of :buyer_id }
  it { should validate_presence_of :status }
  it { should validate_presence_of :product_id }

  it { should belong_to :product }
  it { should belong_to :seller }
  it { should belong_to :buyer }
  it { should have_many :offers }
end
