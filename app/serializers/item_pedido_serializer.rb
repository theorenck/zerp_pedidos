class ItemPedidoSerializer < ActiveModel::Serializer
  attributes :id, :quantidade, :percentual_desconto, :valor_decimal, :valor_unitario
  has_one :pedido
  has_one :produto
end
