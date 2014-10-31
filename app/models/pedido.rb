class Pedido < ActiveRecord::Base
	belongs_to :cliente
	belongs_to :vendedor
	has_many :pedido_item
end
