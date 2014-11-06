class Pedido < ActiveRecord::Base
  has_one :cliente
  has_one :vendedor
  has_many :itens_pedido

  enum situacao: { aberto: '1', finalizado: '2', cancelado: '3' }

end


