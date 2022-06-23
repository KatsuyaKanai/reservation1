class Room < ApplicationRecord
    
    mount_uploader :room_image, ImageUploader

    belongs_to :user, optional: true
    belongs_to :reservation,optional: true
    gem "refile-mini_magick"

    validates :room_name,presence: true
    validates :room_introduction,presence: true
    validates :room_price,presence: true
    validates :room_address,presence: true
    validates :room_image,presence: true

    def stay_days
        (end_date - start_date).to_int
    end

    def total_price
        room_price * (end_date - start_date).to_int * person_num
    end



    
end
