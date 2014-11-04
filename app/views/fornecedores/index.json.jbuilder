json.array!(@fornecedores) do |fornecedor|
  json.extract! fornecedor, :id, :situacao, :observacoes, :pessoa_id
  json.url fornecedor_url(fornecedor, format: :json)
end
