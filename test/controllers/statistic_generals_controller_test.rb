require 'test_helper'

class StatisticGeneralsControllerTest < ActionController::TestCase
  setup do
    @statistic_general = statistic_generals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statistic_generals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create statistic_general" do
    assert_difference('StatisticGeneral.count') do
      post :create, statistic_general: { expense: @statistic_general.expense, month: @statistic_general.month, recipe: @statistic_general.recipe, year: @statistic_general.year }
    end

    assert_redirected_to statistic_general_path(assigns(:statistic_general))
  end

  test "should show statistic_general" do
    get :show, id: @statistic_general
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @statistic_general
    assert_response :success
  end

  test "should update statistic_general" do
    patch :update, id: @statistic_general, statistic_general: { expense: @statistic_general.expense, month: @statistic_general.month, recipe: @statistic_general.recipe, year: @statistic_general.year }
    assert_redirected_to statistic_general_path(assigns(:statistic_general))
  end

  test "should destroy statistic_general" do
    assert_difference('StatisticGeneral.count', -1) do
      delete :destroy, id: @statistic_general
    end

    assert_redirected_to statistic_generals_path
  end
end
