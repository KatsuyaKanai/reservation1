class Room < ApplicationRecord
    
    mount_uploader :room_image, ImageUploader

    belongs_to :user
    has_many :reservations
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
        binding.pry
        if search_room_address
            binding.pry
          Room.where(['room_address like?', "%#{search_room_address}%"])
        else
            binding.pry
          Room.all
        end
    end
    def self.search(search_room_name_introduction)
        binding.pry
        if search_room_name_introduction
            binding.pry
          Room.where(['room_name like? OR room_introduction like?', "%#{search_room_name_introduction}%","%#{search_room_name_introduction}%"])
        else
            binding.pry
          Room.all
        end
    end

   
    
end
