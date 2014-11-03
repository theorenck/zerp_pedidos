json.array!(@produtos) do |produto|
  json.extract! produto, :id, :codigo, :codigo_barras, :descricao, :preco_custo, :preco_venda, :situacao, :observacoes, :tipo_produto_id, :modelo_id
  json.url produto_url(produto, format: :json)
end
