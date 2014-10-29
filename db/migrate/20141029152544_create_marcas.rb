class CreateMarcas < ActiveRecord::Migration
  def change
    create_table :marcas do |t|
      t.references :fabriacnte, index: true
      t.string :descricao

      t.timestamps
    end
  end
end
