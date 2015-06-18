require 'test_helper'

class DelaisControllerTest < ActionController::TestCase
  setup do
    @delai = delais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:delais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create delai" do
    assert_difference('Delai.count') do
      post :create, delai: { description: @delai.description, name: @delai.name, nb_day: @delai.nb_day }
    end

    assert_redirected_to delai_path(assigns(:delai))
  end

  test "should show delai" do
    get :show, id: @delai
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @delai
    assert_response :success
  end

  test "should update delai" do
    patch :update, id: @delai, delai: { description: @delai.description, name: @delai.name, nb_day: @delai.nb_day }
    assert_redirected_to delai_path(assigns(:delai))
  end

  test "should destroy delai" do
    assert_difference('Delai.count', -1) do
      delete :destroy, id: @delai
    end

    assert_redirected_to delais_path
  end
end
