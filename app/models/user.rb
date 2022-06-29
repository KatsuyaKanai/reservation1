class User < ApplicationRecord

  mount_uploader :image, ImageUploader

  has_many :rooms
  belongs_to :reservation, optional: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
         validates :name, presence: true
         validates :email, uniqueness: true, presence: true
         
         
end
