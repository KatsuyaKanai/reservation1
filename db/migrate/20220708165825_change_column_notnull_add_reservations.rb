class ChangeColumnNotnullAddReservations < ActiveRecord::Migration[6.1]
  def change
    change_column_null :reservations, :person_num, :true
  end
end
