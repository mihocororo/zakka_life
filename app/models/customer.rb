class Customer < ApplicationRecord
  has_many :post_shops, dependent: :destroy
  has_many :post_rooms, dependent: :destroy
  has_many :likes, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def active_for_authentication?
  super && (self.is_deleted == false)
  end
end
