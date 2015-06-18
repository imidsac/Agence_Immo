require 'test_helper'

class StatisticOwnersControllerTest < ActionController::TestCase
  setup do
    @statistic_owner = statistic_owners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statistic_owners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create statistic_owner" do
    assert_difference('StatisticOwner.count') do
      post :create, statistic_owner: { month: @statistic_owner.month, pay: @statistic_owner.pay, provide: @statistic_owner.provide, year: @statistic_owner.year }
    end

    assert_redirected_to statistic_owner_path(assigns(:statistic_owner))
  end

  test "should show statistic_owner" do
    get :show, id: @statistic_owner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @statistic_owner
    assert_response :success
  end

  test "should update statistic_owner" do
    patch :update, id: @statistic_owner, statistic_owner: { month: @statistic_owner.month, pay: @statistic_owner.pay, provide: @statistic_owner.provide, year: @statistic_owner.year }
    assert_redirected_to statistic_owner_path(assigns(:statistic_owner))
  end

  test "should destroy statistic_owner" do
    assert_difference('StatisticOwner.count', -1) do
      delete :destroy, id: @statistic_owner
    end

    assert_redirected_to statistic_owners_path
  end
end
