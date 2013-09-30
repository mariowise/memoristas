json.array!(@carreras) do |carrera|
  json.extract! carrera, :nombre_carrera, :coordinador_carrera
  json.url carrera_url(carrera, format: :json)
end
