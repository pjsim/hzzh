class Offer < ActiveRecord::Base
  belongs_to :haggle
  belongs_to :user
  enum intention: ['float', 'initial', 'counter']
end
