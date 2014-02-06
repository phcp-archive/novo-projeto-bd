json.array!(@produtos) do |produto|
  json.extract! produto, :id, :nome, :preco, :codigo, :descricao, :quantidade
  json.url produto_url(produto, format: :json)
end
