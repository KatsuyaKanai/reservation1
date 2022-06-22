class ChangeDataRoomImageToRooms < ActiveRecord::Migration[6.1]
  def change
    change_column :rooms, :room_image, :midiumblob
  end
end
