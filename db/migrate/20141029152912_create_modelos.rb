class CreateModelos < ActiveRecord::Migration
  def change
    create_table :modelos do |t|
      t.refeernces :marca, index: true
      t.string :codigo
      t.string :descricao

      t.timestamps
    end
  end
end
