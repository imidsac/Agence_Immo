require 'test_helper'

class DepensesControllerTest < ActionController::TestCase
  setup do
    @depense = depenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:depenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create depense" do
    assert_difference('Depense.count') do
      post :create, depense: { categoriedep_id: @depense.categoriedep_id, description: @depense.description, etat: @depense.etat, montant: @depense.montant }
    end

    assert_redirected_to depense_path(assigns(:depense))
  end

  test "should show depense" do
    get :show, id: @depense
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @depense
    assert_response :success
  end

  test "should update depense" do
    patch :update, id: @depense, depense: { categoriedep_id: @depense.categoriedep_id, description: @depense.description, etat: @depense.etat, montant: @depense.montant }
    assert_redirected_to depense_path(assigns(:depense))
  end

  test "should destroy depense" do
    assert_difference('Depense.count', -1) do
      delete :destroy, id: @depense
    end

    assert_redirected_to depenses_path
  end
end
