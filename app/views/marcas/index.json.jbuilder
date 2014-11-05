json.array!(@marcas) do |marca|
  json.extract! marca, :id, :descricao, :fabricante_id
  json.url marca_url(marca, format: :json)
end
