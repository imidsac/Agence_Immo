require 'test_helper'

class BanquesControllerTest < ActionController::TestCase
  setup do
    @banque = banques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:banques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create banque" do
    assert_difference('Banque.count') do
      post :create, banque: { compte: @banque.compte, nom: @banque.nom, solde: @banque.solde }
    end

    assert_redirected_to banque_path(assigns(:banque))
  end

  test "should show banque" do
    get :show, id: @banque
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @banque
    assert_response :success
  end

  test "should update banque" do
    patch :update, id: @banque, banque: { compte: @banque.compte, nom: @banque.nom, solde: @banque.solde }
    assert_redirected_to banque_path(assigns(:banque))
  end

  test "should destroy banque" do
    assert_difference('Banque.count', -1) do
      delete :destroy, id: @banque
    end

    assert_redirected_to banques_path
  end
end
