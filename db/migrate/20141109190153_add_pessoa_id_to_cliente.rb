class AddPessoaIdToCliente < ActiveRecord::Migration
  def change
    add_column :clientes, :pessoa_id, :integer
    add_index :clientes, :pessoa_id
  end
end
