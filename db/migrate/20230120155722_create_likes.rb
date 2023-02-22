class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|

      t.timestamps
      t.references :customer,foreign_key: true,null: false
      t.integer :post_shop_id,null: false
    end
  end
end
