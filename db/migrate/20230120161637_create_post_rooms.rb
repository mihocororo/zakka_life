class CreatePostRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :post_rooms do |t|

      t.timestamps
      t.integer :customer_id
      t.string :name, null:false
      t.integer :image_id
      t.integer :nickname
      t.text :comment, null:false
    end
  end
end
