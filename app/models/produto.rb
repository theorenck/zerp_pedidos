class Produto < ActiveRecord::Base

  has_one :tipo_produto
  has_one :modelo
  has_one :unidade_medida
  has_many :fornecedores

   scope :ativos,  lambda  { where ({situacao: 'N'}) }

end
