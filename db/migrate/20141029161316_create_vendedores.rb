class CreateVendedores < ActiveRecord::Migration
  def change
    create_table :vendedores do |t|
      t.decimal :percentual_comissao
      t.string :situacao

      t.timestamps
    end
  end
end
