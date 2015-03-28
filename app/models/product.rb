class Product < ActiveRecord::Base
  belongs_to :user
  has_many :haggles, dependent: :destroy
  has_many :offers, through: :haggles

  validates :user_id, :title, presence: true

  # if price == 0 = 'suggest me an offer'
end
