json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :cliente_id, :vendedor_id, :numero, :emissao, :entrega, :situacao, :observacoes
  json.url pedido_url(pedido, format: :json)
end
