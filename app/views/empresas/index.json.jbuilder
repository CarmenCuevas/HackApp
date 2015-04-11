json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :nombre, :giro, :forma_juridica, :tamaño, :rango, :capital_inicial, :roi, :longitud, :latitud
  json.url empresa_url(empresa, format: :json)
end
