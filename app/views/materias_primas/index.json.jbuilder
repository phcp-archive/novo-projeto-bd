json.array!(@materias_primas) do |materia_prima|
  json.extract! materia_prima, :id, :nome, :codigo, :descricao, :quantidade
  json.url materia_prima_url(materia_prima, format: :json)
end
