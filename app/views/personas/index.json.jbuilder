json.array!(@personas) do |persona|
  json.extract! persona, :run_persona, :nombre_persona, :apellido_persona, :email_persona, :fono_persona
  json.url persona_url(persona, format: :json)
end
