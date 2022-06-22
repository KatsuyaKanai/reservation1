class Reservaiton < ActiveRecord::Migration[6.1]
  def change
    drop_table :reservaitons
  end
end
