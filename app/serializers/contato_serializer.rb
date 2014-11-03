class ContatoSerializer < ActiveModel::Serializer
  attributes :id, :descricao, :informacao, :observacoes
end
