class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|

      t.timestamps
      t.string :title, null:false
      t.text :comment, null:false
      t.string :nickname, null:false

    end
  end
end
