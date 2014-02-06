json.array!(@solicitacoes) do |solicitacao|
  json.extract! solicitacao, :id, :status, :data, :desconto, :pagamento, :pessoa_id
  json.url solicitacao_url(solicitacao, format: :json)
end
