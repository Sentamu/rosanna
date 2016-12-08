require 'test_helper'

class KistingsControllerTest < ActionController::TestCase
  setup do
    @kisting = kistings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kistings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kisting" do
    assert_difference('Kisting.count') do
      post :create, kisting: { description: @kisting.description, name: @kisting.name, rentprice: @kisting.rentprice, sellprice: @kisting.sellprice }
    end

    assert_redirected_to kisting_path(assigns(:kisting))
  end

  test "should show kisting" do
    get :show, id: @kisting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kisting
    assert_response :success
  end

  test "should update kisting" do
    patch :update, id: @kisting, kisting: { description: @kisting.description, name: @kisting.name, rentprice: @kisting.rentprice, sellprice: @kisting.sellprice }
    assert_redirected_to kisting_path(assigns(:kisting))
  end

  test "should destroy kisting" do
    assert_difference('Kisting.count', -1) do
      delete :destroy, id: @kisting
    end

    assert_redirected_to kistings_path
  end
end
