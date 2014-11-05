class MarcaSerializer < ActiveModel::Serializer
  attributes :id, :descricao
  has_one :fabricante
end
