class Reservation < ApplicationRecord
    
    has_many :rooms

    def stay_days
        (end_date - start_date).to_int
    end
   

    
   
end
