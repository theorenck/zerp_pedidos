class ClienteSerializer < ActiveModel::Serializer
  attributes :id, :observacoes, :situacao
end
