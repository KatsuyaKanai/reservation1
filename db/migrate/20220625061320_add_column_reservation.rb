class AddColumnReservation < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :person_num, :integer
  end
end