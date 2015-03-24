class Haggle < ActiveRecord::Base
  belongs_to :product
  belongs_to :buyer, class_name: 'User', foreign_key: 'buyer_id'
  belongs_to :seller, class_name: 'User', foreign_key: 'seller_id'
  has_many :offers, dependent: :destroy
  enum status: ['open', 'close']
end
