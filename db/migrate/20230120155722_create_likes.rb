class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|

      t.timestamps
      t.references :customer,foreign_key: true,null: false
      t.references :post_shop,foreign_key: true,null: false
    end
  end
end
