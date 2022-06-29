class Reservation < ApplicationRecord
    
    belongs_to :room, optional: true
    has_many :users
    def stay_days
        (end_date - start_date).to_int
    end
   

    
   
end
