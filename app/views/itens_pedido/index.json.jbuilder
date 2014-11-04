json.array!(@itens_pedido) do |item_pedido|
  json.extract! item_pedido, :id, :pedido_id, :produto_id, :quantidade, :percentual_desconto, :valor_decimal, :valor_unitario
  json.url item_pedido_url(item_pedido, format: :json)
end
