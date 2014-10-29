class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.references :pessoa, index: true
      t.string :bairro
      t.string :cep
      t.string :cidade
      t.string :codigo_ibge
      t.string :complemento
      t.string :logradouro
      t.string :numero
      t.string :pais
      t.string :uf

      t.timestamps
    end
  end
end
