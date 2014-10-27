class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|

      t.string :type

      t.string :cpf_cnpj, limit: 14

      t.string :razao_social
      t.string :nome_fantasia      
      t.string :inscricao_estadual
      t.string :inscricao_municipal
      t.string :suframa

      t.string :nome
      t.date :data_nascimento
      t.string :naturalidade
      t.date :rg_emissao
      t.string :rg_numero
      t.string :orgao
      t.string :sexo      

      t.timestamps
    end
  end
end
