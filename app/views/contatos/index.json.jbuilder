json.array!(@contatos) do |contato|
  json.extract! contato, :id, :descricao, :informacao, :observacoes
  json.url contato_url(contato, format: :json)
end
