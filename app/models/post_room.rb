class PostRoom < ApplicationRecord
  has_one_attached :image
  belongs_to :customer, optional: true
  validates :image, presence: true
  validates :name, presence: true
  validates :comment, presence: true
end
