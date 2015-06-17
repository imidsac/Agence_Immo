require 'test_helper'

class ModalitepaiementsControllerTest < ActionController::TestCase
  setup do
    @modalitepaiement = modalitepaiements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modalitepaiements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modalitepaiement" do
    assert_difference('Modalitepaiement.count') do
      post :create, modalitepaiement: { description: @modalitepaiement.description, mode: @modalitepaiement.mode }
    end

    assert_redirected_to modalitepaiement_path(assigns(:modalitepaiement))
  end

  test "should show modalitepaiement" do
    get :show, id: @modalitepaiement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @modalitepaiement
    assert_response :success
  end

  test "should update modalitepaiement" do
    patch :update, id: @modalitepaiement, modalitepaiement: { description: @modalitepaiement.description, mode: @modalitepaiement.mode }
    assert_redirected_to modalitepaiement_path(assigns(:modalitepaiement))
  end

  test "should destroy modalitepaiement" do
    assert_difference('Modalitepaiement.count', -1) do
      delete :destroy, id: @modalitepaiement
    end

    assert_redirected_to modalitepaiements_path
  end
end
