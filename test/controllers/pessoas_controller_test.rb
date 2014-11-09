require 'test_helper'

class PessoasControllerTest < ActionController::TestCase
  setup do
    @pessoa = pessoas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pessoas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pessoa" do
    assert_difference('Pessoa.count') do
      post :create, pessoa: { cpf_cnpj: @pessoa.cpf_cnpj, data_nascimento: @pessoa.data_nascimento, inscricao_estadual: @pessoa.inscricao_estadual, inscricao_municipal: @pessoa.inscricao_municipal, naturalidade: @pessoa.naturalidade, nome: @pessoa.nome, nome_fantasia: @pessoa.nome_fantasia, orgao: @pessoa.orgao, razao_social: @pessoa.razao_social, rg_emissao: @pessoa.rg_emissao, rg_numero: @pessoa.rg_numero, sexo: @pessoa.sexo, suframa: @pessoa.suframa, type: @pessoa.type }
    end

    assert_redirected_to pessoa_path(assigns(:pessoa))
  end

  test "should show pessoa" do
    get :show, id: @pessoa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pessoa
    assert_response :success
  end

  test "should update pessoa" do
    patch :update, id: @pessoa, pessoa: { cpf_cnpj: @pessoa.cpf_cnpj, data_nascimento: @pessoa.data_nascimento, inscricao_estadual: @pessoa.inscricao_estadual, inscricao_municipal: @pessoa.inscricao_municipal, naturalidade: @pessoa.naturalidade, nome: @pessoa.nome, nome_fantasia: @pessoa.nome_fantasia, orgao: @pessoa.orgao, razao_social: @pessoa.razao_social, rg_emissao: @pessoa.rg_emissao, rg_numero: @pessoa.rg_numero, sexo: @pessoa.sexo, suframa: @pessoa.suframa, type: @pessoa.type }
    assert_redirected_to pessoa_path(assigns(:pessoa))
  end

  test "should destroy pessoa" do
    assert_difference('Pessoa.count', -1) do
      delete :destroy, id: @pessoa
    end

    assert_redirected_to pessoas_path
  end
end
