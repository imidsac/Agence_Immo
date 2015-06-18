require 'test_helper'

class CategoriedepsControllerTest < ActionController::TestCase
  setup do
    @categoriedep = categoriedeps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categoriedeps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categoriedep" do
    assert_difference('Categoriedep.count') do
      post :create, categoriedep: { description: @categoriedep.description, name: @categoriedep.name }
    end

    assert_redirected_to categoriedep_path(assigns(:categoriedep))
  end

  test "should show categoriedep" do
    get :show, id: @categoriedep
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categoriedep
    assert_response :success
  end

  test "should update categoriedep" do
    patch :update, id: @categoriedep, categoriedep: { description: @categoriedep.description, name: @categoriedep.name }
    assert_redirected_to categoriedep_path(assigns(:categoriedep))
  end

  test "should destroy categoriedep" do
    assert_difference('Categoriedep.count', -1) do
      delete :destroy, id: @categoriedep
    end

    assert_redirected_to categoriedeps_path
  end
end
