require 'rails_helper'

RSpec.describe Offer, type: :model do
  let(:offer) { build :offer }
  subject { offer }
  it { should be_valid }

  it { should respond_to :intention }
  it { should respond_to :price }
  it { should respond_to :haggle }
  it { should respond_to :user }

  it { should validate_presence_of :haggle_id }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :intention }
end
