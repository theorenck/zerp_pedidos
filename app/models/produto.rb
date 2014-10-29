class Produto < ActiveRecord::Base

	has_one :tipo_produto
	has_one :marca
	has_one :unidade_medida
	has_many :fornecedores
	
end
