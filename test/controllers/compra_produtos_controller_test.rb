require 'test_helper'

class CompraProdutosControllerTest < ActionController::TestCase
  setup do
    @compra_produto = compra_produtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compra_produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compra_produto" do
    assert_difference('CompraProduto.count') do
      post :create, compra_produto: { data: @compra_produto.data, fornecedor_id: @compra_produto.fornecedor_id, pagamento: @compra_produto.pagamento, status: @compra_produto.status }
    end

    assert_redirected_to compra_produto_path(assigns(:compra_produto))
  end

  test "should show compra_produto" do
    get :show, id: @compra_produto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compra_produto
    assert_response :success
  end

  test "should update compra_produto" do
    patch :update, id: @compra_produto, compra_produto: { data: @compra_produto.data, fornecedor_id: @compra_produto.fornecedor_id, pagamento: @compra_produto.pagamento, status: @compra_produto.status }
    assert_redirected_to compra_produto_path(assigns(:compra_produto))
  end

  test "should destroy compra_produto" do
    assert_difference('CompraProduto.count', -1) do
      delete :destroy, id: @compra_produto
    end

    assert_redirected_to compra_produtos_path
  end
end
