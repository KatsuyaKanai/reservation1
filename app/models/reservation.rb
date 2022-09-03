class Reservation < ApplicationRecord
    
    belongs_to :room
    belongs_to :user
    has_many :homes

    validates :start_date,presence: true
    validates :end_date,presence: true
    validates :stay_days,presence: true
    validates :total_price,presence: true
    validates :person_num,numericality: {greater_than: 0}
    validate :start_end_check
    validate :date_before_start
    

    def start_end_check
        errors.add(:end_date,"は開始日以降の日を登録して下さい") unless
        start_date == nil or end_date == nil or start_date < end_date
    end

    def date_before_start
        errors.add(:start_date,"は今日以降のものを選択して下さい") if start_date != nil and end_date != nil and start_date < Date.today
    end
    
    def stay_days
        (end_date - start_date).to_int
    end
   
end
