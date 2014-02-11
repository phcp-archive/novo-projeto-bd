class AddQuantidadeToProdutoSolicitados < ActiveRecord::Migration
  def change
    add_column :produto_solicitados, :quantidade, :integer
  end
end
