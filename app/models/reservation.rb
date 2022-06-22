class Reservation < ApplicationRecord
    has_many :rooms
    belongs_to :user, optional: true
end
