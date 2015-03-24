class Product < ActiveRecord::Base
  belongs_to :user
  has_many :haggles, dependent: :destroy
  has_many :offers, through: :haggles
end
