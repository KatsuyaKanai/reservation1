class Reservation < ApplicationRecord
    
    has_one :room

    def stay_days
        (end_date - start_date).to_int
    end
   

    
   
end
