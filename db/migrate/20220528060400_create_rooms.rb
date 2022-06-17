class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :user_id
      t.string :room_name, null: false, default: ""
      t.string :room_introduction, null: false, default: ""
      t.integer :room_price, null: false, default: ""
      t.string :room_address, null: false, default: ""
      t.string :room_image, null: false, default: ""

      t.timestamps
    end
  end
end
