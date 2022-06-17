class ChangeOptionNameToUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :name, :varchar , default: "", null: false
  end
end
