class CreateUnidadesMedida < ActiveRecord::Migration
  def change
    create_table :unidades_medida do |t|
      t.string :simbolo
      t.string :descricao

      t.timestamps
    end
  end
end
