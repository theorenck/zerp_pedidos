require 'test_helper'

class TiposProdutoControllerTest < ActionController::TestCase
  setup do
    @tipo_produto = tipos_produto(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipos_produto)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_produto" do
    assert_difference('TipoProduto.count') do
      post :create, tipo_produto: { descricao: @tipo_produto.descricao }
    end

    assert_redirected_to tipo_produto_path(assigns(:tipo_produto))
  end

  test "should show tipo_produto" do
    get :show, id: @tipo_produto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_produto
    assert_response :success
  end

  test "should update tipo_produto" do
    patch :update, id: @tipo_produto, tipo_produto: { descricao: @tipo_produto.descricao }
    assert_redirected_to tipo_produto_path(assigns(:tipo_produto))
  end

  test "should destroy tipo_produto" do
    assert_difference('TipoProduto.count', -1) do
      delete :destroy, id: @tipo_produto
    end

    assert_redirected_to tipos_produto_path
  end
end
