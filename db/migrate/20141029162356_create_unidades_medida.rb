class CreateUnidadesMedida < ActiveRecord::Migration
  def change
    create_table :unidades_medida do |t|
      t.string :abreviatura
      t.string :descricao

      t.timestamps
    end
  end
end
