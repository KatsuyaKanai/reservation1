class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :room_id
      t.string :name, null: false, default: ""
      t.string :introduction, null: false, default: ""
      t.integer :price, null: false, default: ""
      t.string :address, null: false, default: ""
      t.string :image, null: false, default: ""

      t.timestamps
    end
  end
end
