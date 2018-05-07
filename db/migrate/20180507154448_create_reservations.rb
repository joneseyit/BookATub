class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :guest_id
      t.integer :listing_id
      t.datetime :date_time

      t.timestamps
    end
  end
end
