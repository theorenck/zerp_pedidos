class CreateFornecedores < ActiveRecord::Migration
  def change
    create_table :fornecedores do |t|
      t.string :situacao
      t.string :observacoes

      t.references :pessoa

      t.timestamps
    end
  end
end
