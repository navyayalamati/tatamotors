require 'test_helper'

class DealerLocationsControllerTest < ActionController::TestCase
  setup do
    @dealer_location = dealer_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dealer_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dealer_location" do
    assert_difference('DealerLocation.count') do
      post :create, dealer_location: { category: @dealer_location.category, city: @dealer_location.city, country: @dealer_location.country, latitude: @dealer_location.latitude, longitude: @dealer_location.longitude, name_of_setup: @dealer_location.name_of_setup, tel_no: @dealer_location.tel_no }
    end

    assert_redirected_to dealer_location_path(assigns(:dealer_location))
  end

  test "should show dealer_location" do
    get :show, id: @dealer_location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dealer_location
    assert_response :success
  end

  test "should update dealer_location" do
    patch :update, id: @dealer_location, dealer_location: { category: @dealer_location.category, city: @dealer_location.city, country: @dealer_location.country, latitude: @dealer_location.latitude, longitude: @dealer_location.longitude, name_of_setup: @dealer_location.name_of_setup, tel_no: @dealer_location.tel_no }
    assert_redirected_to dealer_location_path(assigns(:dealer_location))
  end

  test "should destroy dealer_location" do
    assert_difference('DealerLocation.count', -1) do
      delete :destroy, id: @dealer_location
    end

    assert_redirected_to dealer_locations_path
  end
end
