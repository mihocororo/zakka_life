class Area < ApplicationRecord
  has_many :post_shops
  validates :name, presence: true
  has_one :post_shop
end
