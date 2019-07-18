class CreateParkingSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :parking_spots do |t|
      t.boolean :available, :default => false
      t.integer :user_id
      t.integer :latitude
      t.integer :longitude

      t.timestamps
    end
  end
end
