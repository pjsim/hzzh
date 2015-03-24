class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :products, dependent: :destroy
  has_many :seller_haggles, class_name: 'Haggle', foreign_key: 'seller_id'
  has_many :buyer_haggles, class_name: 'Haggle', foreign_key: 'buyer_id'
  has_many :offers
end
