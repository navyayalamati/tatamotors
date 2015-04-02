require 'test_helper'

class PassengerVehiclesControllerTest < ActionController::TestCase
  setup do
    @passenger_vehicle = passenger_vehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:passenger_vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create passenger_vehicle" do
    assert_difference('PassengerVehicle.count') do
      post :create, passenger_vehicle: { image: @passenger_vehicle.image, introduction: @passenger_vehicle.introduction, name: @passenger_vehicle.name }
    end

    assert_redirected_to passenger_vehicle_path(assigns(:passenger_vehicle))
  end

  test "should show passenger_vehicle" do
    get :show, id: @passenger_vehicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @passenger_vehicle
    assert_response :success
  end

  test "should update passenger_vehicle" do
    patch :update, id: @passenger_vehicle, passenger_vehicle: { image: @passenger_vehicle.image, introduction: @passenger_vehicle.introduction, name: @passenger_vehicle.name }
    assert_redirected_to passenger_vehicle_path(assigns(:passenger_vehicle))
  end

  test "should destroy passenger_vehicle" do
    assert_difference('PassengerVehicle.count', -1) do
      delete :destroy, id: @passenger_vehicle
    end

    assert_redirected_to passenger_vehicles_path
  end
end
