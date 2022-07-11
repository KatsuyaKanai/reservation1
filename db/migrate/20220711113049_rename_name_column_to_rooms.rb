class RenameNameColumnToRooms < ActiveRecord::Migration[6.1]
  def change
    rename_column :rooms, :name, :room_name
    rename_column :rooms, :introduction, :room_introduction
    rename_column :rooms, :price, :room_price
    rename_column :rooms, :address, :room_address
  end
end
