json.array!(@vendedores) do |vendedor|
  json.extract! vendedor, :id, :percentual_comissao, :situacao
  json.url vendedor_url(vendedor, format: :json)
end
