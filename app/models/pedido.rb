class Pedido < ActiveRecord::Base
	has_one :cliente
	has_one :vendedor
	has_many :item_pedido
end
