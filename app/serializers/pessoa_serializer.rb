class PessoaSerializer < ActiveModel::Serializer
  attributes :id, :razao_social, :nome_fantasia, :cpf_cnpj, :inscricao_estadual, :inscricao_municipal, :suframa, :nome, :data_nascimento, :naturalidade, :rg_emissao, :rg_numero, :orgao, :sexo, :type
end
