require 'test_helper'

class TbanquesControllerTest < ActionController::TestCase
  setup do
    @tbanque = tbanques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tbanques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tbanque" do
    assert_difference('Tbanque.count') do
      post :create, tbanque: { banque_id: @tbanque.banque_id, montant: @tbanque.montant, porteur: @tbanque.porteur, type: @tbanque.type }
    end

    assert_redirected_to tbanque_path(assigns(:tbanque))
  end

  test "should show tbanque" do
    get :show, id: @tbanque
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tbanque
    assert_response :success
  end

  test "should update tbanque" do
    patch :update, id: @tbanque, tbanque: { banque_id: @tbanque.banque_id, montant: @tbanque.montant, porteur: @tbanque.porteur, type: @tbanque.type }
    assert_redirected_to tbanque_path(assigns(:tbanque))
  end

  test "should destroy tbanque" do
    assert_difference('Tbanque.count', -1) do
      delete :destroy, id: @tbanque
    end

    assert_redirected_to tbanques_path
  end
end
