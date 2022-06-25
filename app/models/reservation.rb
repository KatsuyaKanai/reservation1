class Reservation < ApplicationRecord
    
    has_many :rooms

    def stay_days
        (end_date - start_date).to_int
    end
   

    #def total_price
    #    room_price * (end_date - start_date).to_int * person_num
    #end

   
end
