class Room < ApplicationRecord
    
    mount_uploader :room_image, ImageUploader

    belongs_to :user
    has_many :reservations
    has_many :homes
    gem "refile-mini_magick"

    validates :room_name,presence: true
    validates :room_introduction,presence: true
    validates :room_price,presence: true
    validates :room_address,presence: true
    validates :room_image,presence: true

    def stay_days
        (end_date - start_date).to_int
    end
    
   
    def self.search(search_room)
        Room.where(["room_address like?","%#{search_room[:search_room_address]}%"]).where(["room_name like? OR room_introduction like?","%#{search_room[:search_room_name]}%","%#{search_room[:search_room_name]}%"])
    end

   
    
end
