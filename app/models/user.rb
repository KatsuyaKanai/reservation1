class User < ApplicationRecord

  mount_uploader :image, ImageUploader

  has_many :homes
  has_many :rooms
  has_many :reservations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
         validates :name, presence: true
         validates :email, uniqueness: true, presence: true
         
         
end
