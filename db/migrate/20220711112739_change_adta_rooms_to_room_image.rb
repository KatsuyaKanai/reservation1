class ChangeAdtaRoomsToRoomImage < ActiveRecord::Migration[6.1]
  def change
    change_column :rooms, :room_image, :binary
  end
end
