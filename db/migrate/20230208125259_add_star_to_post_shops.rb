class AddStarToPostShops < ActiveRecord::Migration[6.1]
  def change
    add_column :post_shops, :star, :integer
  end
end
