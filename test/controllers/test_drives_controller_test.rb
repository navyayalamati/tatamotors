require 'test_helper'

class TestDrivesControllerTest < ActionController::TestCase
  setup do
    @test_drife = test_drives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_drives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_drife" do
    assert_difference('TestDrive.count') do
      post :create, test_drife: { comments: @test_drife.comments, email: @test_drife.email, first_name: @test_drife.first_name, last_name: @test_drife.last_name, mobile: @test_drife.mobile, model: @test_drife.model, office_address: @test_drife.office_address, preffered_time: @test_drife.preffered_time, residential_address: @test_drife.residential_address, vehicle_type: @test_drife.vehicle_type }
    end

    assert_redirected_to test_drife_path(assigns(:test_drife))
  end

  test "should show test_drife" do
    get :show, id: @test_drife
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_drife
    assert_response :success
  end

  test "should update test_drife" do
    patch :update, id: @test_drife, test_drife: { comments: @test_drife.comments, email: @test_drife.email, first_name: @test_drife.first_name, last_name: @test_drife.last_name, mobile: @test_drife.mobile, model: @test_drife.model, office_address: @test_drife.office_address, preffered_time: @test_drife.preffered_time, residential_address: @test_drife.residential_address, vehicle_type: @test_drife.vehicle_type }
    assert_redirected_to test_drife_path(assigns(:test_drife))
  end

  test "should destroy test_drife" do
    assert_difference('TestDrive.count', -1) do
      delete :destroy, id: @test_drife
    end

    assert_redirected_to test_drives_path
  end
end
