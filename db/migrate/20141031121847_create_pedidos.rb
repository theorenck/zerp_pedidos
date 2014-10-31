class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.integer :numero
      t.timestamp :emissao
      t.timestamp :entrega
      t.string :situacao
      t.string :observacoes

      t.timestamps
    end
  end
end
