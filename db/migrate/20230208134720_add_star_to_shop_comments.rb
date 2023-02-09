class AddStarToShopComments < ActiveRecord::Migration[6.1]
  def change
    add_column :shop_comments, :star, :integer
  end
end
