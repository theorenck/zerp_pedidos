class PessoaFisica < Pessoa
	validates :cpf_cnpj, cpf: true
	validates :nome, presence: true, length: { minimum: 3}
end
