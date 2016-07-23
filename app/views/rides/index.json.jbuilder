json.array!(@rides) do |ride|
  json.extract! ride, :id, :type, :request_time, :est_wait_time, :pickup_time, :pickup_pax, :pickup_address, :dropoff_address, :est_trip_duration_at_pickup, :pickups_en_route, :dropoffs_en_route, :dropoff_time, :cost_before_discounts, :cost_after_discounts, :actual_wait_time, :actual_trip_duration
  json.url ride_url(ride, format: :json)
end
