class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|

      t.timestamps
      t.integer :genre_id
      t.string :name, null:false
      t.text :introduction, null:false
      t.string :nickname, null:false
      t.integer :area_id
    end
  end
end
