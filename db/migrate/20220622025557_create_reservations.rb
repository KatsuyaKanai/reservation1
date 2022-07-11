class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :total_price
      t.datetime :start_date, null: false, default: ""
      t.datetime :end_date, null: false, default: ""
      t.integer :person_num, default: ""
      t.integer :stay_days
      t.integer :room_id
      t.timestamps
    end
  end
end
