json.array!(@investors) do |investor|
  json.extract! investor, :id, :nombre, :edad, :perfil, :sector, :resultado, :latitud, :longitud
  json.url investor_url(investor, format: :json)
end
