class Pet < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  validates :name, presence: true
  validates :species, presence: true, inclusion: { in: ["cat", "dog", "turtle", "rabit", "hamster", "mouse", "bird", "fish", "other"]}
  validates :age, presence: true, inclusion: 0..100
  validates :description, presence: true
end
