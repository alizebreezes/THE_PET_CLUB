class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :pets
  has_many :bookings

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  validates :bio, presence: true
end
