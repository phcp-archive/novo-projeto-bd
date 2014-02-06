json.array!(@pessoas) do |pessoa|
  json.extract! pessoa, :id, :nome, :cadastro, :email, :juridico
  json.url pessoa_url(pessoa, format: :json)
end
