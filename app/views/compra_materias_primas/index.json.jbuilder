json.array!(@compra_materias_primas) do |compra_materia_prima|
  json.extract! compra_materia_prima, :id, :data, :status, :pagamento, :fornecedor_id
  json.url compra_materia_prima_url(compra_materia_prima, format: :json)
end
