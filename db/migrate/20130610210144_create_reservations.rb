class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :party_size
      t.integer :user_id
      t.datetime :datetime

      t.timestamps
    end
  end
end
