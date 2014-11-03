class ProdutoSerializer < ActiveModel::Serializer
  attributes :id, :codigo, :codigo_barras, :descricao, :preco_custo, :preco_venda, :situacao, :observacoes
  has_one :tipo_produto
  has_one :modelo
end
