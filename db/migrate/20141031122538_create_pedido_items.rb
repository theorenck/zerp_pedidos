class CreatePedidoItems < ActiveRecord::Migration
  def change
    create_table :pedido_items do |t|
      t.decimal :quantidade
      t.decimal :percentual_desconto
      t.decimal :valor_desconto
      t.decimal :valor_unitario

      t.timestamps
    end
  end
end
