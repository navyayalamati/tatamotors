require 'test_helper'

class EnquiryFormsControllerTest < ActionController::TestCase
  setup do
    @enquiry_form = enquiry_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enquiry_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enquiry_form" do
    assert_difference('EnquiryForm.count') do
      post :create, enquiry_form: { address: @enquiry_form.address, city: @enquiry_form.city, email: @enquiry_form.email, mobile: @enquiry_form.mobile, name: @enquiry_form.name, query: @enquiry_form.query, vehicle_type: @enquiry_form.vehicle_type, zip_code: @enquiry_form.zip_code }
    end

    assert_redirected_to enquiry_form_path(assigns(:enquiry_form))
  end

  test "should show enquiry_form" do
    get :show, id: @enquiry_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enquiry_form
    assert_response :success
  end

  test "should update enquiry_form" do
    patch :update, id: @enquiry_form, enquiry_form: { address: @enquiry_form.address, city: @enquiry_form.city, email: @enquiry_form.email, mobile: @enquiry_form.mobile, name: @enquiry_form.name, query: @enquiry_form.query, vehicle_type: @enquiry_form.vehicle_type, zip_code: @enquiry_form.zip_code }
    assert_redirected_to enquiry_form_path(assigns(:enquiry_form))
  end

  test "should destroy enquiry_form" do
    assert_difference('EnquiryForm.count', -1) do
      delete :destroy, id: @enquiry_form
    end

    assert_redirected_to enquiry_forms_path
  end
end
