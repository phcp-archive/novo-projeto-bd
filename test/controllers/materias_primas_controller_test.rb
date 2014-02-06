require 'test_helper'

class MateriasPrimasControllerTest < ActionController::TestCase
  setup do
    @materia_prima = materias_primas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:materias_primas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create materia_prima" do
    assert_difference('MateriaPrima.count') do
      post :create, materia_prima: { codigo: @materia_prima.codigo, descricao: @materia_prima.descricao, nome: @materia_prima.nome, quantidade: @materia_prima.quantidade }
    end

    assert_redirected_to materia_prima_path(assigns(:materia_prima))
  end

  test "should show materia_prima" do
    get :show, id: @materia_prima
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @materia_prima
    assert_response :success
  end

  test "should update materia_prima" do
    patch :update, id: @materia_prima, materia_prima: { codigo: @materia_prima.codigo, descricao: @materia_prima.descricao, nome: @materia_prima.nome, quantidade: @materia_prima.quantidade }
    assert_redirected_to materia_prima_path(assigns(:materia_prima))
  end

  test "should destroy materia_prima" do
    assert_difference('MateriaPrima.count', -1) do
      delete :destroy, id: @materia_prima
    end

    assert_redirected_to materias_primas_path
  end
end
