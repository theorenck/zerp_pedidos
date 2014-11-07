json.array!(@modelos) do |modelo|
  json.extract! modelo, :id, :codigo, :descricao
  json.url modelo_url(modelo, format: :json)
end
