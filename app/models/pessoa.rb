class Pessoa < ActiveRecord::Base
	has_many :contatos
	has_many :enderecos
end
