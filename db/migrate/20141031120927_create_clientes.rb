class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :situacao
      t.string :observacoes

      t.timestamps
    end
  end
end
