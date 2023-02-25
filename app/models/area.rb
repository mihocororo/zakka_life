class Area < ApplicationRecord
  has_many :post_shops
  has_one :post_shop
  validates :name, presence: true
  # validates :id, presence: true

end
