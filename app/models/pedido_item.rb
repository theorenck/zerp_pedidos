class PedidoItem < ActiveRecord::Base
	belongs_to :pedido
	has_one :produto
end
