class PostRoom < ApplicationRecord
  has_one_attached :image
  belongs_to :customer, optional: true
  validates :name, presence: true
end
