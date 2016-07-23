require 'test_helper'

class RidesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ride = rides(:one)
  end

  test "should get index" do
    get rides_url
    assert_response :success
  end

  test "should get new" do
    get new_ride_url
    assert_response :success
  end

  test "should create ride" do
    assert_difference('Ride.count') do
      post rides_url, params: { ride: { actual_trip_duration: @ride.actual_trip_duration, actual_wait_time: @ride.actual_wait_time, cost_after_discounts: @ride.cost_after_discounts, cost_before_discounts: @ride.cost_before_discounts, dropoff_address: @ride.dropoff_address, dropoff_time: @ride.dropoff_time, dropoffs_en_route: @ride.dropoffs_en_route, est_trip_duration_at_pickup: @ride.est_trip_duration_at_pickup, est_wait_time: @ride.est_wait_time, pickup_address: @ride.pickup_address, pickup_pax: @ride.pickup_pax, pickup_time: @ride.pickup_time, pickups_en_route: @ride.pickups_en_route, request_time: @ride.request_time, type: @ride.type } }
    end

    assert_redirected_to ride_url(Ride.last)
  end

  test "should show ride" do
    get ride_url(@ride)
    assert_response :success
  end

  test "should get edit" do
    get edit_ride_url(@ride)
    assert_response :success
  end

  test "should update ride" do
    patch ride_url(@ride), params: { ride: { actual_trip_duration: @ride.actual_trip_duration, actual_wait_time: @ride.actual_wait_time, cost_after_discounts: @ride.cost_after_discounts, cost_before_discounts: @ride.cost_before_discounts, dropoff_address: @ride.dropoff_address, dropoff_time: @ride.dropoff_time, dropoffs_en_route: @ride.dropoffs_en_route, est_trip_duration_at_pickup: @ride.est_trip_duration_at_pickup, est_wait_time: @ride.est_wait_time, pickup_address: @ride.pickup_address, pickup_pax: @ride.pickup_pax, pickup_time: @ride.pickup_time, pickups_en_route: @ride.pickups_en_route, request_time: @ride.request_time, type: @ride.type } }
    assert_redirected_to ride_url(@ride)
  end

  test "should destroy ride" do
    assert_difference('Ride.count', -1) do
      delete ride_url(@ride)
    end

    assert_redirected_to rides_url
  end
end
