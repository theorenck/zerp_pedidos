json.array!(@tipos_produto) do |tipo_produto|
  json.extract! tipo_produto, :id, :descricao
  json.url tipo_produto_url(tipo_produto, format: :json)
end
