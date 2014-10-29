class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :descricao
      t.string :informacao
      t.string :observacoes
      t.references :pessoa, index: true

      t.timestamps
    end
  end
end
