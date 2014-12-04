class PessoaJuridica < Pessoa
	validates :cpf_cnpj, cnpj: true
	validates :nome, presence: true, length: { minimum: 3 }
end
