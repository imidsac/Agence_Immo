require 'test_helper'

class ContratsControllerTest < ActionController::TestCase
  setup do
    @contrat = contrats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contrats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contrat" do
    assert_difference('Contrat.count') do
      post :create, contrat: {article: @contrat.article, description: @contrat.description, type_contrat: @contrat.type_contrat}
    end

    assert_redirected_to contrat_path(assigns(:contrat))
  end

  test "should show contrat" do
    get :show, id: @contrat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contrat
    assert_response :success
  end

  test "should update contrat" do
    patch :update, id: @contrat, contrat: {article: @contrat.article, description: @contrat.description, type_contrat: @contrat.type_contrat}
    assert_redirected_to contrat_path(assigns(:contrat))
  end

  test "should destroy contrat" do
    assert_difference('Contrat.count', -1) do
      delete :destroy, id: @contrat
    end

    assert_redirected_to contrats_path
  end
end
