class AddColumnUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :image, :midiumblob
  end
end
