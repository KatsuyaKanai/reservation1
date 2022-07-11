class ChangeColumnsNotnullAddReservations < ActiveRecord::Migration[6.1]
  def change
    change_column_null :reservations, :end_date, false, 0
    change_column_null :reservations, :person_num, false, 0
    
  end
end
