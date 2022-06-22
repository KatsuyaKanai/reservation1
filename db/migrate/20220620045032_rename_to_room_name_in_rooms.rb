class RenameToRoomNameInRooms < ActiveRecord::Migration[6.1]
  def change
    rename_column :rooms, :room_name, :name
  end
  def change
    rename_column :rooms, :room_introduction, :introduction
  end
  def change
    rename_column :rooms, :room_price, :price
  end
  def change
    rename_column :rooms, :room_address, :address
  end
  def change
    rename_column :rooms, :room_image, :image
  end
end
