class AddPessoaIdToVendedor < ActiveRecord::Migration
  def change
    add_column :vendedores, :pessoa_id, :integer
    add_index :vendedores, :pessoa_id
  end
end
