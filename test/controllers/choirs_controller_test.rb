require 'test_helper'

class ChoirsControllerTest < ActionController::TestCase
  setup do
    @choir = choirs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:choirs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create choir" do
    assert_difference('Choir.count') do
      post :create, choir: { city: @choir.city, country: @choir.country, house_no: @choir.house_no, latitude: @choir.latitude, longitude: @choir.longitude, name: @choir.name, street_name: @choir.street_name, zipcode: @choir.zipcode }
    end

    assert_redirected_to choir_path(assigns(:choir))
  end

  test "should show choir" do
    get :show, id: @choir
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @choir
    assert_response :success
  end

  test "should update choir" do
    patch :update, id: @choir, choir: { city: @choir.city, country: @choir.country, house_no: @choir.house_no, latitude: @choir.latitude, longitude: @choir.longitude, name: @choir.name, street_name: @choir.street_name, zipcode: @choir.zipcode }
    assert_redirected_to choir_path(assigns(:choir))
  end

  test "should destroy choir" do
    assert_difference('Choir.count', -1) do
      delete :destroy, id: @choir
    end

    assert_redirected_to choirs_path
  end
end
