require 'test_helper'

class ChambersControllerTest < ActionController::TestCase
  setup do
    @chamber = chambers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chambers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chamber" do
    assert_difference('Chamber.count') do
      post :create, chamber: { building_id: @chamber.building_id, name: @chamber.name, type_chamber: @chamber.type_chamber }
    end

    assert_redirected_to chamber_path(assigns(:chamber))
  end

  test "should show chamber" do
    get :show, id: @chamber
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chamber
    assert_response :success
  end

  test "should update chamber" do
    patch :update, id: @chamber, chamber: { building_id: @chamber.building_id, name: @chamber.name, type_chamber: @chamber.type_chamber }
    assert_redirected_to chamber_path(assigns(:chamber))
  end

  test "should destroy chamber" do
    assert_difference('Chamber.count', -1) do
      delete :destroy, id: @chamber
    end

    assert_redirected_to chambers_path
  end
end
