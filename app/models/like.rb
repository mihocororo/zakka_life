class Like < ApplicationRecord
  belongs_to :customer
  belongs_to :post_shop
  validates :customer_id, uniqueness: { scope: :post_shop_id }
  # validates_uniqueness_of :PostShop_id, scope: :customer_id
end
