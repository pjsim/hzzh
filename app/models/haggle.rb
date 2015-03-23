class Haggle < ActiveRecord::Base
  belongs_to :product
  has_many :offers
  enum status: ['open', 'close']
end
