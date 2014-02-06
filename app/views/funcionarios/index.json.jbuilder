json.array!(@funcionarios) do |funcionario|
  json.extract! funcionario, :id, :nome, :cadastro, :email, :juridico, :cargo, :senha
  json.url funcionario_url(funcionario, format: :json)
end
