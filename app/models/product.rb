class Product < ActiveRecord::Base
  belongs_to :user
  has_many :haggles
  has_many :offers, through: :haggles
end
