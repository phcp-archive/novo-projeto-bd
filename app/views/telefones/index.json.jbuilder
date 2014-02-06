json.array!(@telefones) do |telefone|
  json.extract! telefone, :id, :ddd, :numero, :telefonavel_id
  json.url telefone_url(telefone, format: :json)
end
