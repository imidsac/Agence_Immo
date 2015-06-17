require 'test_helper'

class PaiementsControllerTest < ActionController::TestCase
  setup do
    @paiement = paiements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paiements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paiement" do
    assert_difference('Paiement.count') do
      post :create, paiement: { client_id: @paiement.client_id, datepaiement: @paiement.datepaiement, motif: @paiement.motif, num: @paiement.num, num_paie: @paiement.num_paie, owner_id: @paiement.owner_id, type_paiement: @paiement.type_paiement }
    end

    assert_redirected_to paiement_path(assigns(:paiement))
  end

  test "should show paiement" do
    get :show, id: @paiement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paiement
    assert_response :success
  end

  test "should update paiement" do
    patch :update, id: @paiement, paiement: { client_id: @paiement.client_id, datepaiement: @paiement.datepaiement, motif: @paiement.motif, num: @paiement.num, num_paie: @paiement.num_paie, owner_id: @paiement.owner_id, type_paiement: @paiement.type_paiement }
    assert_redirected_to paiement_path(assigns(:paiement))
  end

  test "should destroy paiement" do
    assert_difference('Paiement.count', -1) do
      delete :destroy, id: @paiement
    end

    assert_redirected_to paiements_path
  end
end
