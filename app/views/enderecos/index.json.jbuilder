json.array!(@enderecos) do |endereco|
  json.extract! endereco, :id, :bairro, :cep, :cidade, :codigo_ibge, :complemento, :logradouro, :numero, :pais, :uf, :pessoa_id
  json.url endereco_url(endereco, format: :json)
end
