class Reservation < ApplicationRecord
    
    belongs_to :room
    belongs_to :user
    has_many :homes
    def stay_days
        (end_date - start_date).to_int
    end
   

    
   
end
