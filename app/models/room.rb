class Room < ApplicationRecord

    gem "refile-mini_magick"
    belongs_to :user

    validates :room_name,presence: true
    validates :room_introduction,presence: true
    validates :rooms_price,presence: true
    validates :rooms_address,presence: true
    validates :rooms_picture,presence: true
    
end
