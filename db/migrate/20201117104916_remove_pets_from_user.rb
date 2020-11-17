class RemovePetsFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :pets, null: false, foreign_key: true
  end
end
