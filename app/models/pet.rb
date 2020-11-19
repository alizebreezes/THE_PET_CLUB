class Pet < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
<<<<<<< HEAD

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location
=======
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
>>>>>>> 2e1316b8dd139ac0f149b3624aabcaefab8d3426
  validates :name, presence: true
  validates :species, presence: true, inclusion: { in: ["cat", "dog", "turtle", "rabit", "hamster", "mouse", "bird", "fish", "other"]}
  validates :age, presence: true, inclusion: 0..100
  validates :description, presence: true
end
