class AddUseridTousers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_id, :integer
    add_column :users, :image, :binary
  end
end
