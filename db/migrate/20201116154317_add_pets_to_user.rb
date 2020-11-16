class AddPetsToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :pets, null: false, foreign_key: true
  end
end
