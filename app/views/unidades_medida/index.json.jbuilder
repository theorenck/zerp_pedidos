json.array!(@unidades_medida) do |unidade_medida|
  json.extract! unidade_medida, :id, :simbolo, :descricao
  json.url unidade_medida_url(unidade_medida, format: :json)
end
