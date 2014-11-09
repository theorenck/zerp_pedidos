json.array!(@pessoas) do |pessoa|
  json.extract! pessoa, :id, :razao_social, :nome_fantasia, :cpf_cnpj, :inscricao_estadual, :inscricao_municipal, :suframa, :nome, :data_nascimento, :naturalidade, :rg_emissao, :rg_numero, :orgao, :sexo, :type
  json.url pessoa_url(pessoa, format: :json)
end
