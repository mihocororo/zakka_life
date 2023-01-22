class CreatePostShops < ActiveRecord::Migration[6.1]
  def change
    create_table :post_shops do |t|

      t.timestamps
      t.integer :customer_id
      t.integer :area_id
      t.string :name, null:false
      t.integer :image_id, null:false
      t.integer :nickname, null:false
      t.text :introduction, null:false
    end
  end
end
