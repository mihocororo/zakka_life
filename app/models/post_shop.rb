class PostShop < ApplicationRecord
  has_one_attached :image
  belongs_to :customer, optional: true
  belongs_to :area, optional: true
  has_many :shop_comments
  accepts_nested_attributes_for :shop_comments
  validates :name, presence: true

end
