class Offer < ActiveRecord::Base
  belongs_to :haggle
  belongs_to :user
  enum intention: ['float', 'initial', 'counter']

  validates :haggle_id, :user_id, :intention, presence: true
end
