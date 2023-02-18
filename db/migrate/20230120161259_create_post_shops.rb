class CreatePostShops < ActiveRecord::Migration[6.1]
  def change
    create_table :post_shops do |t|

      t.timestamps
      t.integer :customer_id
      t.integer :area_id
      t.integer :shop_comment_id
      t.string :name
      t.integer :image_id
      t.integer :nickname
      t.text :introduction
    end
  end
end
