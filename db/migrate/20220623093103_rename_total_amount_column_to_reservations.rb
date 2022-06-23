class RenameTotalAmountColumnToReservations < ActiveRecord::Migration[6.1]
  def change
    rename_column :reservations, :total_amount, :total_price
  end
end
