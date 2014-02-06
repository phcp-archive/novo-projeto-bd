require 'test_helper'

class TelefonesControllerTest < ActionController::TestCase
  setup do
    @telefone = telefones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:telefones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create telefone" do
    assert_difference('Telefone.count') do
      post :create, telefone: { ddd: @telefone.ddd, numero: @telefone.numero, telefonavel_id: @telefone.telefonavel_id }
    end

    assert_redirected_to telefone_path(assigns(:telefone))
  end

  test "should show telefone" do
    get :show, id: @telefone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @telefone
    assert_response :success
  end

  test "should update telefone" do
    patch :update, id: @telefone, telefone: { ddd: @telefone.ddd, numero: @telefone.numero, telefonavel_id: @telefone.telefonavel_id }
    assert_redirected_to telefone_path(assigns(:telefone))
  end

  test "should destroy telefone" do
    assert_difference('Telefone.count', -1) do
      delete :destroy, id: @telefone
    end

    assert_redirected_to telefones_path
  end
end
