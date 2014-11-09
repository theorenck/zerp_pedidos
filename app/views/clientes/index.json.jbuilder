json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :observacoes, :situacao
  json.url cliente_url(cliente, format: :json)
end
