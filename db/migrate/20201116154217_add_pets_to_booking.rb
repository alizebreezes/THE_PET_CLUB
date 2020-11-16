class AddPetsToBooking < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :pet, null: false, foreign_key: true
  end
end
