class Pessoa < ActiveRecord::Base
	has_many :contatos
	has_many :enderecos
	has_one  :fornecedor
end
