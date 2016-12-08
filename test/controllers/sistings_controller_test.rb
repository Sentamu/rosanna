require 'test_helper'

class SistingsControllerTest < ActionController::TestCase
  setup do
    @sisting = sistings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sistings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sisting" do
    assert_difference('Sisting.count') do
      post :create, sisting: { description: @sisting.description, name: @sisting.name, rentprice: @sisting.rentprice, sellprice: @sisting.sellprice }
    end

    assert_redirected_to sisting_path(assigns(:sisting))
  end

  test "should show sisting" do
    get :show, id: @sisting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sisting
    assert_response :success
  end

  test "should update sisting" do
    patch :update, id: @sisting, sisting: { description: @sisting.description, name: @sisting.name, rentprice: @sisting.rentprice, sellprice: @sisting.sellprice }
    assert_redirected_to sisting_path(assigns(:sisting))
  end

  test "should destroy sisting" do
    assert_difference('Sisting.count', -1) do
      delete :destroy, id: @sisting
    end

    assert_redirected_to sistings_path
  end
end
