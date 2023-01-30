class PostShop < ApplicationRecord
  has_one_attached :image
  belongs_to :customer, optional: true
  belongs_to :area, optional: true
  validates :name, presence: true

end
