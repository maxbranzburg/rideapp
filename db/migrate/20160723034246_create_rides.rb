class CreateRides < ActiveRecord::Migration[5.0]
  def change
    create_table :rides do |t|
      t.string :type
      t.datetime :request_time
      t.integer :est_wait_time
      t.datetime :pickup_time
      t.integer :pickup_pax
      t.string :pickup_address
      t.string :dropoff_address
      t.integer :est_trip_duration_at_pickup
      t.integer :pickups_en_route
      t.integer :dropoffs_en_route
      t.datetime :dropoff_time
      t.float :cost_before_discounts
      t.float :cost_after_discounts
      t.float :actual_wait_time
      t.float :actual_trip_duration

      t.timestamps
    end
  end
end
