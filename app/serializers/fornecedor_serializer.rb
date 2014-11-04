class FornecedorSerializer < ActiveModel::Serializer
  attributes :id, :situacao, :observacoes
  has_one :pessoa
end
