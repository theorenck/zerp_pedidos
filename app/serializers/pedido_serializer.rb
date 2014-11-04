class PedidoSerializer < ActiveModel::Serializer
  attributes :id, :numero, :emissao, :entrega, :situacao, :observacoes
  has_one :cliente
  has_one :vendedor
end
