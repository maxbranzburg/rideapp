class Ride < ApplicationRecord
	
	belongs_to :user
	
	validates :type, 						presence: true
	validates :request_time, 				presence: true
	validates :est_wait_time, 				presence: true
	validates :pickup_time, 				presence: true
	validates :pickup_pax, 					presence: true
	validates :pickup_address, 				presence: true
	validates :dropoff_address, 			presence: true
	validates :est_trip_duration_at_pickup, presence: true
	validates :pickups_en_route, 			presence: true
	validates :dropoffs_en_route, 			presence: true
	validates :dropoff_time, 				presence: true
	validates :cost_before_discounts, 		presence: true
	validates :cost_after_discounts, 		presence: true
	validates :actual_wait_time, 			presence: true
	validates :actual_trip_duration, 		presence: true
	validates :user_name,			 		presence: true

end
