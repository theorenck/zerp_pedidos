class ItemPedido < ActiveRecord::Base
   has_one :produto
end
