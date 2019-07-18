class CreateUserParkingSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :user_parking_spots do |t|
      t.integer :user_id
      t.integer :parkingSpot_id
      t.integer :latitude
      t.integer :longitude

      t.timestamps
    end
  end
end
