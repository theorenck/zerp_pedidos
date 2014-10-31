class CreateItensPedido < ActiveRecord::Migration
  def change
    create_table :itens_pedido do |t|
      t.references :pedido, index: true
      t.references :produto
      t.decimal :quantidade
      t.decimal :percentual_desconto
      t.decimal :valor_decimal
      t.decimal :valor_unitario

      t.timestamps
    end
  end
end
