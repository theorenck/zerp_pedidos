class Pedido < ActiveRecord::Base
	has_one :cliente
	has_one :vendedor
	has_many :itens_pedido
end
