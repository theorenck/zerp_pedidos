class ItemPedido < ActiveRecord::Base
   has_one :pedido
   has_one :produto
end
