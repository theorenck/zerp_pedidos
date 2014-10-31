class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :codigo
      t.string :codigo_barras
      t.string :descricao
      t.decimal :preco_custo
      t.decimal :preco_venda
      t.string :situacao
      t.string :observacoes
      t.references :tipo_produto
      t.references :modelo

      t.timestamps
    end
  end
end
