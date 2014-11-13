class EnderecoSerializer < ActiveModel::Serializer
  attributes :id, :bairro, :cep, :cidade, :codigo_ibge, :complemento, :logradouro, :numero, :pais, :uf
  has_one :pessoa
end
